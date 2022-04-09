contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor1 = 416413 * 3600
    stor2 = 416485 * 3600
    stor3 = 15000 * 10^18
    stor4 = 20 * 10^18
    stor5 = 10^16
    stor6 = 0
    stor7 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    return code.data[195 len 3743]
}



// =====================  Runtime code  =====================


uint8 state; offset 160
address owner;
uint256 startsAt;
uint256 endsAt;
uint256 ceiling;
uint256 sub_da246ebd;
uint256 sub_bb1765b3;
uint256 totalEther;
uint256 sub_b019d7c4;
mapping of uint256 sub_0e123ff8;
array of address sub_ed4a5053;

function sub_00a6e124(?) {
    require msg.sender == owner
    return sub_ed4a5053.length
}

function endsAt() {
    return endsAt
}

function sub_0e123ff8(?) {
    return sub_0e123ff8[arg1]
}

function ceiling() {
    return ceiling
}

function owner() {
    return owner
}

function totalEther() {
    return totalEther
}

function startsAt() {
    return startsAt
}

function sub_b019d7c4(?) {
    return sub_b019d7c4
}

function sub_bb1765b3(?) {
    return sub_bb1765b3
}

function state() {
    require state <= 3
    return state
}

function sub_da246ebd(?) {
    return sub_da246ebd
}

function sub_ed4a5053(?) {
    require arg1 < sub_ed4a5053.length
    return address(sub_ed4a5053[arg1])
}

function getAmount(address arg1) {
    require msg.sender == owner
    return sub_0e123ff8[address(arg1)]
}

function sub_96a0f912(?) payable {
    require msg.sender == owner
    require state <= 3
    require state == 2
    state = 3
}

function changeSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require state <= 3
    require not state
    startsAt = arg1
    endsAt = arg2
    ceiling = arg3
}

function updateState() {
    require msg.sender == owner
    require state <= 3
    if not state:
        if block.timestamp >= startsAt:
            state = 1
    require state <= 3
    if state == 1:
        if block.timestamp > endsAt:
            state = 2
    require state <= 3
    return state
}

function sub_4ee1065b(?) {
    require msg.sender == owner
    require arg1
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require state <= 3
    require state == 3
    require sub_0e123ff8[address(msg.sender)]
    sub_0e123ff8[address(msg.sender)] = 0
    sub_b019d7c4 += sub_0e123ff8[address(msg.sender)]
    call msg.sender with:
       value sub_0e123ff8[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(sub_0e123ff8[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    require state <= 3
    if not state:
        if block.timestamp >= startsAt:
            state = 1
    require state <= 3
    if state == 1:
        if block.timestamp > endsAt:
            state = 2
    require state <= 3
    require state == 1
    require msg.value >= sub_bb1765b3
    if ceiling - totalEther <= sub_da246ebd:
        if msg.value <= ceiling - totalEther:
            require msg.value
            sub_0e123ff8[address(msg.sender)] += msg.value
            totalEther += msg.value
            sub_ed4a5053.length++
            if not sub_ed4a5053.length <= sub_ed4a5053.length + 1:
                idx = sub_ed4a5053.length + 1
                while sub_ed4a5053.length > idx:
                    uint256(sub_ed4a5053[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_ed4a5053[sub_ed4a5053.length]) = msg.sender
            if totalEther >= ceiling:
                state = 2
            emit Invest(msg.value, msg.sender);
        else:
            call msg.sender with:
               value msg.value - ceiling + totalEther wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ceiling - totalEther
            sub_0e123ff8[address(msg.sender)] = sub_0e123ff8[address(msg.sender)] + ceiling - totalEther
            totalEther = ceiling
            sub_ed4a5053.length++
            if not sub_ed4a5053.length <= sub_ed4a5053.length + 1:
                idx = sub_ed4a5053.length + 1
                while sub_ed4a5053.length > idx:
                    uint256(sub_ed4a5053[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_ed4a5053[sub_ed4a5053.length]) = msg.sender
            if totalEther >= ceiling:
                state = 2
            emit Invest((ceiling - totalEther), msg.sender);
    else:
        if msg.value <= sub_da246ebd:
            require msg.value
            sub_0e123ff8[address(msg.sender)] += msg.value
            totalEther += msg.value
            sub_ed4a5053.length++
            if not sub_ed4a5053.length <= sub_ed4a5053.length + 1:
                idx = sub_ed4a5053.length + 1
                while sub_ed4a5053.length > idx:
                    uint256(sub_ed4a5053[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_ed4a5053[sub_ed4a5053.length]) = msg.sender
            if totalEther >= ceiling:
                state = 2
            emit Invest(msg.value, msg.sender);
        else:
            call msg.sender with:
               value msg.value - sub_da246ebd wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require sub_da246ebd
            sub_0e123ff8[address(msg.sender)] += sub_da246ebd
            totalEther += sub_da246ebd
            sub_ed4a5053.length++
            if not sub_ed4a5053.length <= sub_ed4a5053.length + 1:
                idx = sub_ed4a5053.length + 1
                while sub_ed4a5053.length > idx:
                    uint256(sub_ed4a5053[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_ed4a5053[sub_ed4a5053.length]) = msg.sender
            if totalEther >= ceiling:
                state = 2
            emit Invest(sub_da246ebd, msg.sender);
}



}
