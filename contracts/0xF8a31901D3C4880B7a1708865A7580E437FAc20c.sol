contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
array of address stor9;
mapping of uint8 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor2 = 416532 * 3600
    stor3 = 168 * 24 * 3600
    stor4 = 17150 * 10^18
    stor5 = 10^16
    stor6 = 1
    stor7 = 5
    stor8 = 419272 * 3600
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    require not msg.value
    stor0 = msg.sender
    stor11 = 0
    stor7 = 5
    mem[96] = 0x4a8a2b40588f312acc7afd46d307effa3f1ad506
    mem[128] = 0xe937131ffc6c6a74f902e492ef17f584bc1dd6fc
    mem[160] = 0x974e06025560c3afc89635c56458b294c4e2acc5
    mem[192] = 0x5bff61a1a044b92b058b74bc69a2dc9b76e69fb1
    mem[224] = 0x3ddb3941c5a038fb1aa5d5ac75244d62fa58f713
    stor9.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor9[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor9.length > idx:
        stor9[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 10
        stor10[stor9[idx]] = 0
        idx = idx + 1
        continue 
    return code.data[1024 len 5970]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startsAt;
uint256 sub_0c56175f;
uint256 ceiling;
uint256 sub_bb1765b3;
uint8 stor6;
uint256 stor6;
uint256 required;
uint256 sub_52e79560;
array of address owners;
mapping of uint8 stor10;
uint8 state;
uint256 totalEther;
uint256 totalToken;
uint256 sub_b019d7c4;
uint256 sub_b0e3eec2;
mapping of uint256 sub_0e123ff8;
mapping of uint256 tokenAmountOf;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
}

function sub_0c56175f(?) {
    return sub_0c56175f
}

function sub_0d345c62(?) {
    return bool(uint8(stor6))
}

function sub_0e123ff8(?) {
    return sub_0e123ff8[arg1]
}

function sub_52e79560(?) {
    return sub_52e79560
}

function totalToken() {
    return totalToken
}

function ceiling() {
    return ceiling
}

function owner() {
    return owner
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function permit(address arg1) {
    return bool(stor10[arg1])
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

function sub_b0e3eec2(?) {
    return sub_b0e3eec2
}

function sub_bb1765b3(?) {
    return sub_bb1765b3
}

function state() {
    require state <= 4
    return state
}

function required() {
    return required
}

function token() {
    return tokenAddress
}

function setup(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function sub_805e1f53(?) {
    require msg.sender == owner
    uint256(stor6) = not bool(uint8(stor6)) or Mask(248, 8, uint256(stor6))
    return 0
}

function changeSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    startsAt = arg1
    ceiling = arg2
    sub_0c56175f = arg3
}

function calcTokenPrice() {
    if block.timestamp <= startsAt + sub_0c56175f:
        return 680
    if block.timestamp > startsAt + (2 * sub_0c56175f):
        return 550
    return 610
}

function sub_6c34d4c2(?) {
    idx = 0
    while idx < owners.length:
        mem[0] = 9
        if owners[idx] != msg.sender:
            idx = idx + 1
            continue 
        require idx < owners.length
        stor10[stor9[idx]] = 0
}

function sub_8339b88e(?) {
    idx = 0
    while idx < owners.length:
        mem[0] = 9
        if owners[idx] != msg.sender:
            idx = idx + 1
            continue 
        require idx < owners.length
        stor10[stor9[idx]] = 1
}

function sub_d6a28277(?) {
    require msg.sender == owner
    require arg1
    require arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function refund() {
    require state <= 4
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

function unlockTokens() {
    require state <= 4
    require state == 4
    require tokenAmountOf[address(msg.sender)]
    tokenAmountOf[address(msg.sender)] = 0
    sub_b0e3eec2 += tokenAmountOf[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokenAmountOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x55aaef8f: tokenAmountOf[address(msg.sender)], msg.sender
}

function updateState(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        state = 0
    else:
        if arg1 == 1:
            state = 1
        else:
            if arg1 == 2:
                state = 2
            else:
                if arg1 != 3:
                    if arg1 == 4:
                        state = 4
                else:
                    if not uint8(stor6):
                        state = 3
                    else:
                        if arg1 == 4:
                            state = 4
    require state <= 4
    return state
}

function sub_c6d1bc5b(?) {
    require msg.sender == owner
    if block.timestamp < sub_52e79560:
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = owners[idx]
            mem[32] = 10
            if not stor10[stor9[idx]]:
                if s < required:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if s + 1 < required:
                    idx = idx + 1
                    s = s + 1
                    continue 
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
        require s >= required
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

function _fallback() payable {
    require state <= 4
    require state == 1
    require msg.value >= sub_bb1765b3
    require totalEther <= ceiling
    if msg.value <= ceiling - totalEther:
        require msg.value
        sub_0e123ff8[address(msg.sender)] += msg.value
        if block.timestamp <= startsAt + sub_0c56175f:
            tokenAmountOf[address(msg.sender)] += 680 * msg.value
            totalEther += msg.value
            totalToken += 680 * msg.value
        else:
            if block.timestamp > startsAt + (2 * sub_0c56175f):
                tokenAmountOf[address(msg.sender)] += 550 * msg.value
                totalEther += msg.value
                totalToken += 550 * msg.value
            else:
                tokenAmountOf[address(msg.sender)] += 610 * msg.value
                totalEther += msg.value
                totalToken += 610 * msg.value
        emit Invest(msg.value, msg.sender);
    else:
        call msg.sender with:
           value msg.value - ceiling + totalEther wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ceiling - totalEther
        sub_0e123ff8[address(msg.sender)] = sub_0e123ff8[address(msg.sender)] + ceiling - totalEther
        if block.timestamp <= startsAt + sub_0c56175f:
            tokenAmountOf[address(msg.sender)] = tokenAmountOf[address(msg.sender)] + (680 * ceiling) - (680 * totalEther)
            totalEther = ceiling
            totalToken = totalToken + (680 * ceiling) - (680 * totalEther)
        else:
            if block.timestamp > startsAt + (2 * sub_0c56175f):
                tokenAmountOf[address(msg.sender)] = tokenAmountOf[address(msg.sender)] + (550 * ceiling) - (550 * totalEther)
                totalEther = ceiling
                totalToken = totalToken + (550 * ceiling) - (550 * totalEther)
            else:
                tokenAmountOf[address(msg.sender)] = tokenAmountOf[address(msg.sender)] + (610 * ceiling) - (610 * totalEther)
                totalEther = ceiling
                totalToken = totalToken + (610 * ceiling) - (610 * totalEther)
        emit Invest((ceiling - totalEther), msg.sender);
}



}
