contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor3;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 1
    stor0.length.field_8 = '7' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = '7 token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 7 * 10^18
    Mask(168, 0, stor3) = 0
    stor6 = 0
    stor7 = 0
    stor8 = 4
    stor9 = 2
    stor10 = 80
    stor11 = 0
    stor12 = 0
    require not msg.value
    address(stor3) = code.data[3522 len 20]
    return code.data[462 len 3048]
}



// =====================  Runtime code  =====================


const decimals = 18


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint8 stor3; offset 160
address stor3;
uint256 amountRaised;
uint256 deadline;
uint256 overRaisedUnsend;
uint256 backers;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function backers() {
    return backers
}

function symbol() {
    return symbol[0 len symbol.length]
}

function overRaisedUnsend() {
    return overRaisedUnsend
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function StartICO(uint256 arg1) {
    if address(stor3.field_0) == msg.sender:
        if not uint8(stor3.field_160):
            balanceOf[address(stor3.field_0)] = totalSupply
            stor11 = arg1
            deadline = (60 * arg1) + block.timestamp
            uint8(stor3.field_160) = 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
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
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function safeWithdrawal() {
    require stor9
    if block.timestamp > deadline:
        if amountRaised < totalSupply / stor9:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > 0:
                require stor8
                call msg.sender with:
                   value balanceOf[address(msg.sender)] / stor8 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    balanceOf[address(stor3.field_0)] += balanceOf[address(msg.sender)]
                    amountRaised -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], address(stor3.field_0), msg.sender);
        if address(stor3.field_0) == msg.sender:
            require stor9
            if amountRaised >= totalSupply / stor9:
                call address(stor3.field_0) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    stor12 = 1
    else:
        if amountRaised >= totalSupply / stor9:
            require stor9
            if amountRaised < totalSupply / stor9:
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] > 0:
                    require stor8
                    call msg.sender with:
                       value balanceOf[address(msg.sender)] / stor8 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        balanceOf[address(stor3.field_0)] += balanceOf[address(msg.sender)]
                        amountRaised -= balanceOf[address(msg.sender)]
                        emit Transfer(balanceOf[address(msg.sender)], address(stor3.field_0), msg.sender);
            if address(stor3.field_0) == msg.sender:
                require stor9
                if amountRaised >= totalSupply / stor9:
                    call address(stor3.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        stor12 = 1
}

function _fallback() payable {
    if amountRaised + (msg.value * stor8) > totalSupply * stor10 / 100:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            overRaisedUnsend += msg.value
    else:
        if balanceOf[address(stor3.field_0)] < msg.value * stor8:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                overRaisedUnsend += msg.value
        else:
            if msg.value * stor8 <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    overRaisedUnsend += msg.value
            else:
                if balanceOf[address(msg.sender)] + (msg.value * stor8) <= balanceOf[address(msg.sender)]:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        overRaisedUnsend += msg.value
                else:
                    if block.timestamp > deadline:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            overRaisedUnsend += msg.value
                    else:
                        if stor12:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                overRaisedUnsend += msg.value
                        else:
                            if not uint8(stor3.field_160):
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    overRaisedUnsend += msg.value
                            else:
                                backers++
                                balanceOf[address(msg.sender)] += msg.value * stor8
                                balanceOf[address(stor3.field_0)] += -1 * msg.value * stor8
                                amountRaised += msg.value * stor8
                                emit Transfer((msg.value * stor8), address(stor3.field_0), msg.sender);
}



}
