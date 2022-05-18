contract main {




// =====================  Runtime code  =====================


#
#  - buyFor(address arg1)
#  - buy()
#
const decimals = 0

const sub_d3e78e4d(?) = 0xa6b02ee1e4eb59afb7a8ab930357c02c9dc29dad

const FEE_PERCENT = 10


array of uint256 symbol;
array of uint256 name;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint256 refunds;
address sub_67e1c715Address;
address dataAddress;
address authorAddress;
uint256 totalSupply;
uint256 totalTokens;
uint8 state; offset 24
uint32 currency;
array of uint256 title;
uint256 stor12;
uint256 stor13;
array of struct stor14;
array of struct stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;

function purchasedTokens() {
    return totalSupply
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function title() {
    return title[0 len title.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_67e1c715(?) {
    return sub_67e1c715Address
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function data() {
    return dataAddress
}

function totalTokens() {
    return totalTokens
}

function symbol() {
    return symbol[0 len symbol.length]
}

function author() {
    return authorAddress
}

function refunds(address arg1) {
    return refunds[arg1]
}

function state() {
    require state <= 2
    return state
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function currency() {
    return Mask(24, 232, currency)
}

function _fallback() {
    revert
}

function ico() {
    require stor21 <= 3
    return stor16, stor17, stor18, stor19, stor20, stor21
}

function stopICO() {
    require msg.sender == authorAddress
    require state <= 2
    if state != 2:
        state = 2
        require stor21 <= 3
        if stor21 != 1:
            stor21 = 2
        else:
            stor21 = 3
            require ext_code.size(sub_67e1c715Address)
            call sub_67e1c715Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_67e1c715Address)
            call sub_67e1c715Address.0xa9059cbb with:
                 gas gas_remaining wei
                args authorAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_fee111c6(?) {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
}

function getPrice() {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    require state <= 2
    if state != 1:
        return stor12
    return stor13
}

function approve(address arg1, uint256 arg2) {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    require state <= 2
    require state == 2
    require stor21 <= 3
    require stor21 == 3
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    require state <= 2
    require state == 2
    require stor21 <= 3
    require stor21 == 3
    if balances[address(msg.sender)] < arg2:
        return 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    require state <= 2
    require state == 2
    require stor21 <= 3
    require stor21 == 3
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require state <= 2
    if not state:
        if block.timestamp >= stor16:
            state = 1
    require state <= 2
    if state == 1:
        if block.timestamp >= stor17:
            require state <= 2
            if state != 2:
                state = 2
                require stor21 <= 3
                if stor21 != 1:
                    stor21 = 2
                else:
                    stor21 = 3
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_67e1c715Address)
                    call sub_67e1c715Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args authorAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    require stor21 <= 3
    require stor21 == 2
    require balances[address(msg.sender)] > 0
    require refunds[address(msg.sender)] > 0
    require ext_code.size(sub_67e1c715Address)
    call sub_67e1c715Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, refunds[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    balances[address(msg.sender)] = 0
    refunds[address(msg.sender)] = 0
    require balances[address(msg.sender)] <= totalSupply
    totalSupply -= balances[address(msg.sender)]
    emit Refund(refunds[address(msg.sender)], balances[address(msg.sender)], msg.sender);
    return refunds[address(msg.sender)]
}

function book() {
    mem[96] = stor14.length
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor14.length) + ceil32(stor15.length) + 160
    mem[ceil32(stor14.length) + 128] = stor15.length
    mem[0] = 15
    mem[ceil32(stor14.length) + 160] = uint256(stor15.field_0)
    idx = ceil32(stor14.length) + 160
    s = 0
    while ceil32(stor14.length) + stor15.length + 128 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 160] = stor12
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 192] = stor13
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 224] = 128
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 288] = stor14.length
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 320 len ceil32(stor14.length)] = mem[128 len ceil32(stor14.length)]
    mem[ceil32(stor14.length) + ceil32(stor15.length) + 256] = stor14.length + 160
    mem[stor14.length + ceil32(stor14.length) + ceil32(stor15.length) + 320] = stor15.length
    mem[stor14.length + ceil32(stor14.length) + ceil32(stor15.length) + 352 len ceil32(stor15.length)] = mem[ceil32(stor14.length) + 160 len ceil32(stor15.length)]
    if not stor15.length % 32:
        return stor12, 
               stor13,
               Array(len=stor14.length, data=mem[128 len ceil32(stor14.length)], mem[(2 * ceil32(stor14.length)) + ceil32(stor15.length) + 320 len stor15.length + stor14.length + -ceil32(stor14.length) + 32]),
               stor14.length + 160
    mem[floor32(stor15.length) + stor14.length + ceil32(stor14.length) + ceil32(stor15.length) + 352] = mem[floor32(stor15.length) + stor14.length + ceil32(stor14.length) + ceil32(stor15.length) + -stor15.length % 32 + 384 len stor15.length % 32]
    return stor12, 
           stor13,
           Array(len=stor14.length, data=mem[128 len ceil32(stor14.length)], mem[(2 * ceil32(stor14.length)) + ceil32(stor15.length) + 320 len floor32(stor15.length) + stor14.length + -ceil32(stor14.length) + 64]),
           stor14.length + 160
}



}
