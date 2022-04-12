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
    stor1[stor0] = stor4
    stor6 = 0
    stor7 = 0
    return code.data[546 len 8225]
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function allowance(address arg1, address arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require msg.sender == owner
    return stor2[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require msg.sender == owner
    stor2[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require msg.sender == owner
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require _token_state <= 6
    if _token_state != 5:
        require msg.sender == owner
    if balances[address(arg1)] < arg3:
        return 0
    if stor2[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
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
    require msg.sender == owner
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
    require arg1 != owner
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
                    require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                    require (132000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (132000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 132000 * msg.value <= balances[stor0]
                    balances[stor0] += -132000 * msg.value
                    require balances[address(arg1)] + (132000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (132000 * msg.value) >= 132000 * msg.value
                    balances[address(arg1)] += 132000 * msg.value
                    require soldAmount + (132000 * msg.value) >= soldAmount
                    require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                    soldAmount += 132000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 132000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(arg1)] + (528000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(arg1)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require balances[address(arg1)] + (110 * 3600 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    balances[address(arg1)] += 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(arg1)] + (528000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(arg1)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
    else:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 264000 * msg.value / msg.value == 264000
                    require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                    require (264000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (264000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 264000 * msg.value <= balances[stor0]
                    balances[stor0] += -264000 * msg.value
                    require balances[address(arg1)] + (264000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (264000 * msg.value) >= 264000 * msg.value
                    balances[address(arg1)] += 264000 * msg.value
                    require soldAmount + (264000 * msg.value) >= soldAmount
                    require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                    soldAmount += 264000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 264000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(arg1)] + (528000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(arg1)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require balances[address(arg1)] + (110 * 3600 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    balances[address(arg1)] += 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(arg1)] + (528000 * msg.value) >= balances[address(arg1)]
                    require balances[address(arg1)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(arg1)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= balances[address(arg1)]
                    require balances[address(arg1)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(arg1)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, arg1);
}

function _fallback() payable {
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
                    require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                    require (132000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (132000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 132000 * msg.value <= balances[stor0]
                    balances[stor0] += -132000 * msg.value
                    require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                    balances[address(msg.sender)] += 132000 * msg.value
                    require soldAmount + (132000 * msg.value) >= soldAmount
                    require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                    soldAmount += 132000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 132000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(msg.sender)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    balances[address(msg.sender)] += 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(msg.sender)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
    else:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 264000 * msg.value / msg.value == 264000
                    require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                    require (264000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (264000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 264000 * msg.value <= balances[stor0]
                    balances[stor0] += -264000 * msg.value
                    require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                    balances[address(msg.sender)] += 264000 * msg.value
                    require soldAmount + (264000 * msg.value) >= soldAmount
                    require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                    soldAmount += 264000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 264000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(msg.sender)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    balances[address(msg.sender)] += 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                    balances[address(msg.sender)] += 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                    require (msg.value * ownerPrice) + soldAmount >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                    require msg.value * ownerPrice <= balances[stor0]
                    balances[stor0] += -1 * msg.value * ownerPrice
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                    require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    balances[address(msg.sender)] += msg.value * ownerPrice
                    require soldAmount + (msg.value * ownerPrice) >= soldAmount
                    require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                    soldAmount += msg.value * ownerPrice
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
}

function buy() payable {
    require _token_state <= 6
    require _token_state != 6
    require _token_state <= 6
    require _token_state
    require msg.value >= 1
    require owner != msg.sender
    require _token_state <= 6
    if _token_state != 2:
        require _token_state <= 6
        if _token_state != 3:
            require _token_state <= 6
            if _token_state != 4:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                        require (132000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                            else:
                                require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                        else:
                            require (132000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                            else:
                                require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 132000 * msg.value / msg.value == 132000
                        require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                        require (132000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                            else:
                                require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                        else:
                            require (132000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                            else:
                                require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                else:
                                    require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                                    else:
                                        require (132000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 132000 * msg.value <= balances[stor0]
                                        balances[stor0] += -132000 * msg.value
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (132000 * msg.value) >= 132000 * msg.value
                                        balances[address(msg.sender)] += 132000 * msg.value
                                        require soldAmount + (132000 * msg.value) >= soldAmount
                                        require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                                        soldAmount += 132000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 132000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
        else:
            require _token_state <= 6
            if _token_state != 4:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                        require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                        else:
                            require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                        require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                        require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                        else:
                            require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
    else:
        require _token_state <= 6
        if _token_state != 3:
            require _token_state <= 6
            if _token_state != 4:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                        require (264000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                            else:
                                require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                        else:
                            require (264000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                            else:
                                require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 264000 * msg.value / msg.value == 264000
                        require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                        require (264000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                            else:
                                require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                        else:
                            require (264000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                            else:
                                require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                else:
                                    require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                                    else:
                                        require (264000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 264000 * msg.value <= balances[stor0]
                                        balances[stor0] += -264000 * msg.value
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (264000 * msg.value) >= 264000 * msg.value
                                        balances[address(msg.sender)] += 264000 * msg.value
                                        require soldAmount + (264000 * msg.value) >= soldAmount
                                        require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                                        soldAmount += 264000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 264000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
        else:
            require _token_state <= 6
            if _token_state != 4:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                        require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                        else:
                            require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                        require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                        require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                        else:
                            require (110 * 3600 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                            else:
                                require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                else:
                                    require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                                    else:
                                        require (110 * 3600 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 110 * 3600 * msg.value <= balances[stor0]
                                        balances[stor0] += -396000 * msg.value
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        balances[address(msg.sender)] += 110 * 3600 * msg.value
                                        require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                                        require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                                        soldAmount += 110 * 3600 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
            else:
                require _token_state <= 6
                if _token_state != 5:
                    if not msg.value:
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                    else:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                        require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                        require (528000 * msg.value) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                        else:
                            require (528000 * msg.value) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                            else:
                                require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                else:
                                    require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                                    else:
                                        require (528000 * msg.value) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                                        require 528000 * msg.value <= balances[stor0]
                                        balances[stor0] += -528000 * msg.value
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (528000 * msg.value) >= 528000 * msg.value
                                        balances[address(msg.sender)] += 528000 * msg.value
                                        require soldAmount + (528000 * msg.value) >= soldAmount
                                        require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                                        soldAmount += 528000 * msg.value
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if not msg.value:
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                    else:
                        require msg.value
                        require msg.value * ownerPrice / msg.value == ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= msg.value * ownerPrice
                        require (msg.value * ownerPrice) + soldAmount >= soldAmount
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                        else:
                            require (msg.value * ownerPrice) + soldAmount <= 330000000 * 10^18
                            require _token_state <= 6
                            if _token_state != 2:
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                            else:
                                require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                require _token_state <= 6
                                if _token_state != 3:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                else:
                                    require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
                                    else:
                                        require (msg.value * ownerPrice) + soldAmount <= 2750000 * 10^18 * 3600
                                        require balances[stor0] - (msg.value * ownerPrice) >= 13750000 * 10^18 * 3600
                                        require msg.value * ownerPrice <= balances[stor0]
                                        balances[stor0] += -1 * msg.value * ownerPrice
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= balances[address(msg.sender)]
                                        require balances[address(msg.sender)] + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        balances[address(msg.sender)] += msg.value * ownerPrice
                                        require soldAmount + (msg.value * ownerPrice) >= soldAmount
                                        require soldAmount + (msg.value * ownerPrice) >= msg.value * ownerPrice
                                        soldAmount += msg.value * ownerPrice
                                        call owner with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit Buy(msg.value, msg.value * ownerPrice, msg.sender);
}



}
