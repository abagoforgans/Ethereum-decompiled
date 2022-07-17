contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_4cf1e1f9(?)
#  - sub_ec90f54e(?)
#
const sub_2a64b3e2(?) = Array(len=5, data=mem[416 len 160])

const sub_cd6547d6(?) = Array(len=5, data=mem[416 len 160])


address owner;
address newOwner;
mapping of uint256 stor2;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
mapping of address sub_ef3405e4;
array of address stor9;
array of struct stor10;
uint256 profit;
mapping of address sub_5f724206;
array of address stor13;
mapping of address stor14;
uint8 stor15;
uint256 stor16;
address stor17;
uint256 stor18;

function sub_5f724206(?) {
    require stor3[address(msg.sender)]
    return sub_5f724206[address(arg1)]
}

function getProfit() {
    require stor3[address(msg.sender)]
    return profit
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_ef3405e4(?) {
    require stor3[address(msg.sender)]
    return sub_ef3405e4[address(arg1)]
}

function _fallback() payable {
  stop
}

function setProfit(uint256 arg1) {
    require stor3[address(msg.sender)]
    profit = arg1
}

function sub_cb861182(?) {
    require stor3[address(msg.sender)]
    stor14[address(arg1)] = arg2
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function setAddressCall(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function sub_a7241a5e(?) {
    require stor3[address(msg.sender)]
    stor15 = 1
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function toWithdrawEth(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4fd90db2(?) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function getBalance(address arg1, address arg2) {
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d56ffa76(?) {
    require stor3[address(msg.sender)]
    if sub_5f724206[address(arg1)] < 1:
        sub_5f724206[address(arg1)] = arg2
        stor13.length++
        if not stor13.length <= stor13.length + 1:
            idx = stor13.length + 1
            while stor13.length > idx:
                uint256(stor13[idx]) = 0
                idx = idx + 1
                continue 
        address(stor13[stor13.length]) = arg1
}

function setToken(address arg1, address arg2) {
    require stor3[address(msg.sender)]
    if sub_ef3405e4[address(arg1)] < 1:
        sub_ef3405e4[address(arg1)] = arg2
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = arg1
}

function sub_223d9d89(?) {
    require stor3[address(msg.sender)]
    require stor3[address(msg.sender)]
    if sub_5f724206[address(arg1)] < 1:
        sub_5f724206[address(arg1)] = arg2
        stor13.length++
        if not stor13.length <= stor13.length + 1:
            idx = stor13.length + 1
            while stor13.length > idx:
                uint256(stor13[idx]) = 0
                idx = idx + 1
                continue 
        address(stor13[stor13.length]) = arg1
    require stor3[address(msg.sender)]
    stor14[address(arg1)] = arg3
}

function sub_17caa144(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor3[address(msg.sender)]
    stor10.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor10.length > idx:
            stor10[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor10[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor10.length > idx:
            stor10[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_a20f5f85(?) {
    require stor3[address(msg.sender)]
    if not stor10.length:
        mem[(32 * stor10.length) + 160] = 32
        mem[(32 * stor10.length) + 192] = stor10.length
        mem[(32 * stor10.length) + 224 len floor32(stor10.length)] = mem[160 len floor32(stor10.length)]
        return memory
          from (32 * stor10.length) + 160
           len (96 * stor10.length) + 64
    mem[160] = uint256(stor10.field_0)
    idx = 160
    s = 0
    while (32 * stor10.length) + 128 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 224 len floor32(stor10.length)] = mem[160 len floor32(stor10.length)]
    return Array(len=stor10.length, data=mem[160 len floor32(stor10.length)], mem[(32 * stor10.length) + floor32(stor10.length) + 224 len (32 * stor10.length) - floor32(stor10.length)]), 
}

function sub_42cfc845(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require stor3[address(msg.sender)]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if sub_ef3405e4[address(mem[(32 * idx) + 128])] < 1:
            mem[32] = 8
            sub_ef3405e4[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                s = sha3(9) + stor9.length + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 9
            address(stor9[stor9.length]) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_c853db64(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require stor3[address(msg.sender)]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        if sub_5f724206[address(mem[(32 * idx) + 128])] < 1:
            mem[32] = 12
            sub_5f724206[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                s = sha3(13) + stor13.length + 1
                while sha3(13) + stor13.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 13
            address(stor13[stor13.length]) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_5a43501b(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor3[address(msg.sender)]
    require 0 < arg3.length
    require 2 < arg3.length
    _6 = mem[192]
    mem[(32 * arg3.length) + 164] = mem[204 len 20]
    mem[(32 * arg3.length) + 196] = arg2
    require ext_code.size(arg1)
    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(_6), arg2
    mem[(32 * arg3.length) + 128 len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    require 3 < arg3.length
    require ext_code.size(mem[236 len 20])
    call mem[236 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require 2 < arg3.length
    require 4 < arg3.length
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_b5e7a57a(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor5, stor6, arg1
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getTokenToEthInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] <= arg1:
        return (ext_call.return_data[0] > arg1)
    return ext_call.return_data[0] - arg1 >= profit
}

function sub_d4dd0625(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getEthToTokenInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), stor6, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, stor5, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] <= arg1:
        return (ext_call.return_data[0] > arg1)
    return ext_call.return_data[0] - arg1 >= profit
}

function sub_bb4ff2aa(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor3[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require idx < arg3.length
        require stor3[address(msg.sender)]
        require stor3[address(msg.sender)]
        if sub_5f724206[address(mem[(32 * idx) + 128])] < 1:
            sub_5f724206[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                s = sha3(13) + stor13.length + 1
                while sha3(13) + stor13.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(stor13[stor13.length]) = mem[(32 * idx) + 140 len 20]
        require stor3[address(msg.sender)]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        idx = idx + 1
        continue 
}

function sub_2802a449(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3[address(msg.sender)]
    require 0 < arg2.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    require 0 < arg2.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg1
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg1
        require ext_call.success
        require ext_code.size(mem[140 len 20])
        if ext_call.return_data[0]:
            call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), ext_call.return_data[0], arg3
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_7908e28f(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor3[address(msg.sender)]
    if arg2 > 0:
        mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5
    else:
        require 0 < arg3.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg1
        require ext_call.success
        if ext_call.return_data[0] < arg4:
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg1
            require ext_call.success
            require ext_code.size(mem[140 len 20])
            if ext_call.return_data[0]:
                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                require ext_call.success
                require ext_call.return_data[0]
            call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            require ext_call.success
            require ext_call.return_data[0]
        mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_2f51f9bf(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor7, address(arg2), arg1
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.swapEtherToToken(address arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg2)
        call arg2.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(arg2)
            if ext_call.return_data[0]:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                require ext_call.success
                require ext_call.return_data[0]
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        mem[552 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=5, data=mem[552 len 160]), ext_call.return_data[0], 1
        require ext_call.success
}

function sub_f89d90b2(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getEthToTokenInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args ext_call.return_data[0], block.timestamp + 30
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg2)
        call arg2.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(arg2)
            if ext_call.return_data[0]:
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                require ext_call.success
                require ext_call.return_data[0]
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        mem[520 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=5, data=mem[520 len 160]), ext_call.return_data[0], 1
        require ext_call.success
}

function sub_d1b2fb84(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor3[address(msg.sender)]
    if arg2 > 0:
        mem[(32 * arg3.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg1)
        call arg1.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 388 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5, arg6, arg7 << 248, arg8, arg9
    else:
        require 0 < arg3.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg1
        require ext_call.success
        if ext_call.return_data[0] < arg4:
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg1
            require ext_call.success
            require ext_code.size(mem[140 len 20])
            if ext_call.return_data[0]:
                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
                require ext_call.success
                require ext_call.return_data[0]
            call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg4
            require ext_call.success
            require ext_call.return_data[0]
        mem[(32 * arg3.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(arg1)
        call arg1.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 388 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5, arg6, arg7 << 248, arg8, arg9
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_068b7b3a(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    if arg1 > 0:
        mem[516 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg1 wei
             gas gas_remaining wei
            args Array(len=5, data=mem[516 len 160]), arg1, 1
    else:
        require ext_code.size(stor5)
        call stor5.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] < arg1:
            require ext_code.size(stor5)
            call stor5.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(stor5)
            if ext_call.return_data[0]:
                call stor5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                require ext_call.success
                require ext_call.return_data[0]
            call stor5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1
            require ext_call.success
            require ext_call.return_data[0]
        mem[516 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=5, data=mem[516 len 160]), arg1, 1
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), stor7, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
    require ext_call.success
}

function sub_09b4a41f(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    if arg1 > 0:
        mem[516 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg1 wei
             gas gas_remaining wei
            args Array(len=5, data=mem[516 len 160]), arg1, 1
    else:
        require ext_code.size(stor5)
        call stor5.0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] < arg1:
            require ext_code.size(stor5)
            call stor5.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(stor5)
            if ext_call.return_data[0]:
                call stor5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                require ext_call.success
                require ext_call.return_data[0]
            call stor5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1
            require ext_call.success
            require ext_call.return_data[0]
        mem[516 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=5, data=mem[516 len 160]), arg1, 1
    require ext_call.success
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getTokenToEthInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14[address(arg2)], 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14[address(arg2)], ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0], block.timestamp + 30
    require ext_call.success
}

function sub_c4e96404(?) {
    require stor3[address(msg.sender)]
    require stor3[address(msg.sender)]
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getEthToTokenInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_5f724206[address(arg2)])
    call sub_5f724206[address(arg2)].0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), stor6, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, stor5, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] > arg1:
        if ext_call.return_data[0] - arg1 >= profit:
            require stor3[address(msg.sender)]
            require ext_code.size(stor14[address(arg2)])
            call stor14[address(arg2)].getEthToTokenInputPrice(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            require ext_call.success
            require ext_code.size(stor14[address(arg2)])
            call stor14[address(arg2)].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg1 wei
                 gas gas_remaining wei
                args ext_call.return_data[0], block.timestamp + 30
            require ext_call.success
            require ext_code.size(sub_5f724206[address(arg2)])
            call sub_5f724206[address(arg2)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg2)
                call arg2.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.0xdd62ed3e with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    require ext_code.size(arg2)
                    if ext_call.return_data[0]:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        require ext_call.success
                        require ext_call.return_data[0]
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                mem[808 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[808 len 160]), ext_call.return_data[0], 1
                require ext_call.success
}

function sub_4682ed5f(?) {
    require stor3[address(msg.sender)]
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor5, stor6, arg1
    require ext_call.success
    require ext_code.size(sub_5f724206[address(arg2)])
    call sub_5f724206[address(arg2)].0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor14[address(arg2)])
    call stor14[address(arg2)].getTokenToEthInputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] > arg1:
        if ext_call.return_data[0] - arg1 >= profit:
            require stor3[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            if arg1 > 0:
                mem[808 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg1 wei
                     gas gas_remaining wei
                    args Array(len=5, data=mem[808 len 160]), arg1, 1
            else:
                require ext_code.size(stor5)
                call stor5.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] < arg1:
                    require ext_code.size(stor5)
                    call stor5.0xdd62ed3e with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    require ext_code.size(stor5)
                    if ext_call.return_data[0]:
                        call stor5.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        require ext_call.success
                        require ext_call.return_data[0]
                    call stor5.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1
                    require ext_call.success
                    require ext_call.return_data[0]
                mem[808 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[808 len 160]), arg1, 1
            require ext_call.success
            require ext_code.size(stor14[address(arg2)])
            call stor14[address(arg2)].getTokenToEthInputPrice(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor14[address(arg2)], 0
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor14[address(arg2)], ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor14[address(arg2)])
            call stor14[address(arg2)].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0], block.timestamp + 30
            require ext_call.success
}

function sub_a3542618(?) {
    require stor3[address(msg.sender)]
    if arg1 != 1:
        if arg1 == 2:
            require stor3[address(msg.sender)]
            require ext_code.size(stor4)
            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor7, address(arg3), arg2
            require ext_call.success
            require ext_code.size(stor4)
            call stor4.swapEtherToToken(address arg1, uint256 arg2) with:
               value arg2 wei
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(sub_ef3405e4[address(arg3)])
            call sub_ef3405e4[address(arg3)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(arg3)
            call arg3.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg3)
                call arg3.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(arg3)
                    call arg3.0xdd62ed3e with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    require ext_code.size(arg3)
                    if ext_call.return_data[0]:
                        call arg3.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        require ext_call.success
                        require ext_call.return_data[0]
                    call arg3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                mem[552 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[552 len 160]), ext_call.return_data[0], 1
                require ext_call.success
    else:
        require stor3[address(msg.sender)]
        require ext_code.size(stor6)
        call stor6.0x8da5cb5b with:
             gas gas_remaining wei
        require ext_call.success
        require stor3[address(msg.sender)]
        if arg2 > 0:
            mem[516 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=5, data=mem[516 len 160]), arg2, 1
        else:
            require ext_code.size(stor5)
            call stor5.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), address(ext_call.return_data[0])
            require ext_call.success
            if ext_call.return_data[0] < arg2:
                require ext_code.size(stor5)
                call stor5.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(stor5)
                if ext_call.return_data[0]:
                    call stor5.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    require ext_call.success
                    require ext_call.return_data[0]
                call stor5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                require ext_call.success
                require ext_call.return_data[0]
            mem[516 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=5, data=mem[516 len 160]), arg2, 1
        require ext_call.success
        require ext_code.size(stor4)
        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg3), stor7, ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, 0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor4)
        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0], ext_call.return_data[0]
        require ext_call.success
}

function sub_595f0c5d(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor5, stor6, arg1
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), stor7, ext_call.return_data[0]
    require ext_call.success
    if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1 >= profit
        if stor2[stor7]:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            if stor2[stor7] >= 18:
                require stor2[stor7] - 18 <= 18
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18 <= arg1:
                    return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18 > arg1)
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18) - arg1 >= profit
            require -stor2[stor7] + 18 <= 18
            require 10^18 * 10^(-stor2[stor7] + 18)
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18) <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18) > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18)) - arg1 >= profit
        require ext_code.size(stor7)
        call stor7.0x313ce567 with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[0] <= 1000000 * 10^18
        if ext_call.return_data[0] >= 18:
            require ext_call.return_data[0] - 18 <= 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18 <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18 > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18) - arg1 >= profit
        require -ext_call.return_data[0] + 18 <= 18
        require 10^18 * 10^(-ext_call.return_data[0] + 18)
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18) <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18) > arg1)
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)) - arg1 >= profit
    if stor2[address(arg2)]:
        if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            if 18 >= stor2[address(arg2)]:
                require -stor2[address(arg2)] + 18 <= 18
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[address(arg2)] + 18) / 10^18 <= arg1:
                    return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[address(arg2)] + 18) / 10^18 > arg1)
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[address(arg2)] + 18) / 10^18) - arg1 >= profit
            require stor2[address(arg2)] - 18 <= 18
            require 10^18 * 10^(stor2[address(arg2)] - 18)
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - 18) <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - 18) > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - 18)) - arg1 >= profit
        if stor2[stor7]:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            if stor2[stor7] >= stor2[address(arg2)]:
                require stor2[stor7] - stor2[address(arg2)] <= 18
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[address(arg2)]) / 10^18 <= arg1:
                    return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[address(arg2)]) / 10^18 > arg1)
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[address(arg2)]) / 10^18) - arg1 >= profit
            require stor2[address(arg2)] - stor2[stor7] <= 18
            require 10^18 * 10^(stor2[address(arg2)] - stor2[stor7])
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - stor2[stor7]) <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - stor2[stor7]) > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - stor2[stor7])) - arg1 >= profit
        require ext_code.size(stor7)
        call stor7.0x313ce567 with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[0] <= 1000000 * 10^18
        if ext_call.return_data[0] >= stor2[address(arg2)]:
            require ext_call.return_data[0] - stor2[address(arg2)] <= 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[address(arg2)]) / 10^18 <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[address(arg2)]) / 10^18 > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[address(arg2)]) / 10^18) - arg1 >= profit
        require stor2[address(arg2)] - ext_call.return_data[0] <= 18
        require 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0]) <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0]) > arg1)
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0])) - arg1 >= profit
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining wei
    require ext_call.success
    if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[0] <= 1000000 * 10^18
        if 18 >= ext_call.return_data[0]:
            require -ext_call.return_data[0] + 18 <= 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18 <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18 > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18) - arg1 >= profit
        require ext_call.return_data[0] - 18 <= 18
        require 10^18 * 10^(ext_call.return_data[0] - 18)
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18) <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18) > arg1)
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)) - arg1 >= profit
    if stor2[stor7]:
        require ext_call.return_data[0] <= 10000000000 * 10^18
        require ext_call.return_data[0] <= 1000000 * 10^18
        if stor2[stor7] >= ext_call.return_data[0]:
            require stor2[stor7] - ext_call.return_data[0] <= 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18 <= arg1:
                return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18 > arg1)
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18) - arg1 >= profit
        require ext_call.return_data[0] - stor2[stor7] <= 18
        require 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7]) <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7]) > arg1)
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])) - arg1 >= profit
    require ext_code.size(stor7)
    call stor7.0x313ce567 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] <= 10000000000 * 10^18
    require ext_call.return_data[0] <= 1000000 * 10^18
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^0 <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1)
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / 10^18 <= arg1:
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1)
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1 >= profit
}

function sub_5ba52da8(?) {
    require stor3[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor7, address(arg2), arg1
    require ext_call.success
    if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require arg1 <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            require ext_code.size(arg3)
            call arg3.0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18
        else:
            if stor2[address(arg2)]:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if stor2[address(arg2)] >= 18:
                    require stor2[address(arg2)] - 18 <= 18
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - 18) / 10^18
                else:
                    require -stor2[address(arg2)] + 18 <= 18
                    require 10^18 * 10^(-stor2[address(arg2)] + 18)
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(-stor2[address(arg2)] + 18)
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining wei
                require ext_call.success
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if ext_call.return_data[0] >= 18:
                    require ext_call.return_data[0] - 18 <= 18
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                else:
                    require -ext_call.return_data[0] + 18 <= 18
                    require 10^18 * 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
    else:
        if stor2[stor7]:
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= stor2[stor7]:
                    require -stor2[stor7] + 18 <= 18
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(-stor2[stor7] + 18) / 10^18
                else:
                    require stor2[stor7] - 18 <= 18
                    require 10^18 * 10^(stor2[stor7] - 18)
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - 18)
            else:
                if stor2[address(arg2)]:
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[address(arg2)] >= stor2[stor7]:
                        require stor2[address(arg2)] - stor2[stor7] <= 18
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - stor2[stor7]) / 10^18
                    else:
                        require stor2[stor7] - stor2[address(arg2)] <= 18
                        require 10^18 * 10^(stor2[stor7] - stor2[address(arg2)])
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - stor2[address(arg2)])
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if ext_call.return_data[0] >= stor2[stor7]:
                        require ext_call.return_data[0] - stor2[stor7] <= 18
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[stor7]) / 10^18
                    else:
                        require stor2[stor7] - ext_call.return_data[0] <= 18
                        require 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
        else:
            require ext_code.size(stor7)
            call stor7.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
            else:
                if stor2[address(arg2)]:
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[address(arg2)] >= ext_call.return_data[0]:
                        require stor2[address(arg2)] - ext_call.return_data[0] <= 18
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - ext_call.return_data[0]) / 10^18
                    else:
                        require ext_call.return_data[0] - stor2[address(arg2)] <= 18
                        require 10^18 * 10^(ext_call.return_data[0] - stor2[address(arg2)])
                        require ext_code.size(arg3)
                        call arg3.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[address(arg2)])
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    require ext_code.size(arg3)
                    call arg3.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, stor5, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] <= arg1:
        return (ext_call.return_data[0] > arg1)
    return ext_call.return_data[0] - arg1 >= profit
}

function sub_cf5d4dfc(?) {
    require stor3[address(msg.sender)]
    require stor3[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor7, address(arg2), arg1
    require ext_call.success
    if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require arg1 <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            require ext_code.size(sub_ef3405e4[address(arg2)])
            call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18
        else:
            if stor2[address(arg2)]:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if stor2[address(arg2)] >= 18:
                    require stor2[address(arg2)] - 18 <= 18
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - 18) / 10^18
                else:
                    require -stor2[address(arg2)] + 18 <= 18
                    require 10^18 * 10^(-stor2[address(arg2)] + 18)
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(-stor2[address(arg2)] + 18)
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining wei
                require ext_call.success
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if ext_call.return_data[0] >= 18:
                    require ext_call.return_data[0] - 18 <= 18
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                else:
                    require -ext_call.return_data[0] + 18 <= 18
                    require 10^18 * 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
    else:
        if stor2[stor7]:
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= stor2[stor7]:
                    require -stor2[stor7] + 18 <= 18
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(-stor2[stor7] + 18) / 10^18
                else:
                    require stor2[stor7] - 18 <= 18
                    require 10^18 * 10^(stor2[stor7] - 18)
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - 18)
            else:
                if stor2[address(arg2)]:
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[address(arg2)] >= stor2[stor7]:
                        require stor2[address(arg2)] - stor2[stor7] <= 18
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - stor2[stor7]) / 10^18
                    else:
                        require stor2[stor7] - stor2[address(arg2)] <= 18
                        require 10^18 * 10^(stor2[stor7] - stor2[address(arg2)])
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - stor2[address(arg2)])
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if ext_call.return_data[0] >= stor2[stor7]:
                        require ext_call.return_data[0] - stor2[stor7] <= 18
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[stor7]) / 10^18
                    else:
                        require stor2[stor7] - ext_call.return_data[0] <= 18
                        require 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
        else:
            require ext_code.size(stor7)
            call stor7.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg1 <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
            else:
                if stor2[address(arg2)]:
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[address(arg2)] >= ext_call.return_data[0]:
                        require stor2[address(arg2)] - ext_call.return_data[0] <= 18
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] * 10^(stor2[address(arg2)] - ext_call.return_data[0]) / 10^18
                    else:
                        require ext_call.return_data[0] - stor2[address(arg2)] <= 18
                        require 10^18 * 10^(ext_call.return_data[0] - stor2[address(arg2)])
                        require ext_code.size(sub_ef3405e4[address(arg2)])
                        call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[address(arg2)])
                else:
                    require ext_code.size(arg2)
                    call arg2.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require arg1 <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    require ext_code.size(sub_ef3405e4[address(arg2)])
                    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor6, arg1 * ext_call.return_data[0] / 10^18
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, stor5, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] > arg1:
        if ext_call.return_data[0] - arg1 >= profit:
            require stor3[address(msg.sender)]
            require ext_code.size(stor4)
            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor7, address(arg2), arg1
            require ext_call.success
            require ext_code.size(stor4)
            call stor4.swapEtherToToken(address arg1, uint256 arg2) with:
               value arg1 wei
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(sub_ef3405e4[address(arg2)])
            call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg2)
                call arg2.0xdd62ed3e with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.0xdd62ed3e with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    require ext_call.success
                    require ext_code.size(arg2)
                    if ext_call.return_data[0]:
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        require ext_call.success
                        require ext_call.return_data[0]
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                mem[876 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[876 len 160]), ext_call.return_data[0], 1
                require ext_call.success
}

function sub_1d69c67c(?) payable {
    mem[64] = 96
    require not msg.value
    require stor3[address(msg.sender)]
    mem[0] = arg1
    mem[32] = 12
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        _434 = mem[64]
        mem[64] = mem[64] + 32
        mem[_434] = 0
        mem[0] = msg.sender
        mem[32] = 3
        require stor3[address(msg.sender)]
        _436 = mem[64]
        mem[64] = mem[64] + 32
        mem[_436] = 0
        _437 = mem[64]
        mem[64] = mem[64] + 32
        mem[_437] = 0
        _438 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 5
            mem[64] = mem[64] + 192
            require 0 < mem[_438]
            mem[_438 + 32] = stor5
            require 1 < mem[_438]
            mem[_438 + 64] = stor6
            require 2 < mem[_438]
            mem[_438 + 96] = stor6
            require 3 < mem[_438]
            mem[_438 + 128] = sub_5f724206[address(arg1)]
            require 4 < mem[_438]
            mem[_438 + 160] = arg1
            require ext_code.size(stor6)
            call stor6.0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            mem[0] = msg.sender
            mem[32] = 3
            require stor3[address(msg.sender)]
            require 0 < mem[_438]
            require 2 < mem[_438]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor5, stor6, stor10[idx].field_0
            require ext_call.success
            require 3 < mem[_438]
            require ext_code.size(sub_5f724206[address(arg1)])
            call sub_5f724206[address(arg1)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require 2 < mem[_438]
            require 4 < mem[_438]
            mem[_438 + 260] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor6, address(arg1), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor14[address(arg1)])
            call stor14[address(arg1)].getTokenToEthInputPrice(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= stor10[idx].field_0:
                mem[_438 + 192] = 0
                require stor3[address(msg.sender)]
                mem[0] = arg1
                mem[32] = 14
                require ext_code.size(stor14[address(arg1)])
                call stor14[address(arg1)].getEthToTokenInputPrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor10[idx].field_0
                require ext_call.success
                mem[_438 + 224] = 0
                mem[_438 + 256] = 0
                if msize < _438 + 288:
                    mem[_438 + 288] = 5
                    mem[64] = _438 + 480
                    mem[_438 + 448] = stor5
                    mem[_438 + 416] = stor6
                    mem[_438 + 384] = stor6
                    mem[_438 + 352] = sub_5f724206[address(arg1)]
                    mem[_438 + 320] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[_438 + 516] = stor5
                    mem[_438 + 548] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_438 + 480 len 64] = ext_call.return_data[0 len 64]
                else:
                    _561 = msize
                    mem[msize] = 5
                    mem[64] = _561 + 192
                    require 4 < mem[_561]
                    mem[_561 + 160] = stor5
                    require 3 < mem[_561]
                    mem[_561 + 128] = stor6
                    require 2 < mem[_561]
                    mem[_561 + 96] = stor6
                    require 1 < mem[_561]
                    mem[_561 + 64] = sub_5f724206[address(arg1)]
                    require 0 < mem[_561]
                    mem[_561 + 32] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require 0 < mem[_561]
                    require 2 < mem[_561]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require 3 < mem[_561]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require 2 < mem[_561]
                    require 4 < mem[_561]
                    mem[_561 + 228] = stor5
                    mem[_561 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_561 + 192 len 64] = ext_call.return_data[0 len 64]
                require ext_call.success
                if ext_call.return_data[0] <= stor10[idx].field_0:
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - stor10[idx].field_0 < profit:
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
            else:
                if ext_call.return_data[0] - stor10[idx].field_0 >= profit:
                    return 3, address(arg1), stor10[idx].field_0
                mem[_438 + 192] = 0
                require stor3[address(msg.sender)]
                mem[0] = arg1
                mem[32] = 14
                require ext_code.size(stor14[address(arg1)])
                call stor14[address(arg1)].getEthToTokenInputPrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor10[idx].field_0
                require ext_call.success
                mem[_438 + 224] = 0
                mem[_438 + 256] = 0
                if msize < _438 + 288:
                    mem[_438 + 288] = 5
                    mem[64] = _438 + 480
                    mem[_438 + 448] = stor5
                    mem[_438 + 416] = stor6
                    mem[_438 + 384] = stor6
                    mem[_438 + 352] = sub_5f724206[address(arg1)]
                    mem[_438 + 320] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[_438 + 516] = stor5
                    mem[_438 + 548] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_438 + 480 len 64] = ext_call.return_data[0 len 64]
                else:
                    _570 = msize
                    mem[msize] = 5
                    mem[64] = _570 + 192
                    require 4 < mem[_570]
                    mem[_570 + 160] = stor5
                    require 3 < mem[_570]
                    mem[_570 + 128] = stor6
                    require 2 < mem[_570]
                    mem[_570 + 96] = stor6
                    require 1 < mem[_570]
                    mem[_570 + 64] = sub_5f724206[address(arg1)]
                    require 0 < mem[_570]
                    mem[_570 + 32] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require 0 < mem[_570]
                    require 2 < mem[_570]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require 3 < mem[_570]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require 2 < mem[_570]
                    require 4 < mem[_570]
                    mem[_570 + 228] = stor5
                    mem[_570 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_570 + 192 len 64] = ext_call.return_data[0 len 64]
                require ext_call.success
                if ext_call.return_data[0] <= stor10[idx].field_0:
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - stor10[idx].field_0 < profit:
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
        else:
            _441 = msize
            mem[msize] = 5
            mem[64] = _441 + 192
            require 0 < mem[_441]
            mem[_441 + 32] = stor5
            require 1 < mem[_441]
            mem[_441 + 64] = stor6
            require 2 < mem[_441]
            mem[_441 + 96] = stor6
            require 3 < mem[_441]
            mem[_441 + 128] = sub_5f724206[address(arg1)]
            require 4 < mem[_441]
            mem[_441 + 160] = arg1
            require ext_code.size(stor6)
            call stor6.0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            mem[0] = msg.sender
            mem[32] = 3
            require stor3[address(msg.sender)]
            require 0 < mem[_441]
            require 2 < mem[_441]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor5, stor6, stor10[idx].field_0
            require ext_call.success
            require 3 < mem[_441]
            require ext_code.size(sub_5f724206[address(arg1)])
            call sub_5f724206[address(arg1)].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require 2 < mem[_441]
            require 4 < mem[_441]
            mem[_441 + 260] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor6, address(arg1), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor14[address(arg1)])
            call stor14[address(arg1)].getTokenToEthInputPrice(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= stor10[idx].field_0:
                mem[_441 + 192] = 0
                require stor3[address(msg.sender)]
                mem[0] = arg1
                mem[32] = 14
                require ext_code.size(stor14[address(arg1)])
                call stor14[address(arg1)].getEthToTokenInputPrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor10[idx].field_0
                require ext_call.success
                mem[_441 + 224] = 0
                mem[_441 + 256] = 0
                if msize < _441 + 288:
                    mem[_441 + 288] = 5
                    mem[64] = _441 + 480
                    mem[_441 + 448] = stor5
                    mem[_441 + 416] = stor6
                    mem[_441 + 384] = stor6
                    mem[_441 + 352] = sub_5f724206[address(arg1)]
                    mem[_441 + 320] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[_441 + 516] = stor5
                    mem[_441 + 548] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_441 + 480 len 64] = ext_call.return_data[0 len 64]
                else:
                    _572 = msize
                    mem[msize] = 5
                    mem[64] = _572 + 192
                    require 4 < mem[_572]
                    mem[_572 + 160] = stor5
                    require 3 < mem[_572]
                    mem[_572 + 128] = stor6
                    require 2 < mem[_572]
                    mem[_572 + 96] = stor6
                    require 1 < mem[_572]
                    mem[_572 + 64] = sub_5f724206[address(arg1)]
                    require 0 < mem[_572]
                    mem[_572 + 32] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require 0 < mem[_572]
                    require 2 < mem[_572]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require 3 < mem[_572]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require 2 < mem[_572]
                    require 4 < mem[_572]
                    mem[_572 + 228] = stor5
                    mem[_572 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_572 + 192 len 64] = ext_call.return_data[0 len 64]
                require ext_call.success
                if ext_call.return_data[0] <= stor10[idx].field_0:
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - stor10[idx].field_0 < profit:
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
            else:
                if ext_call.return_data[0] - stor10[idx].field_0 >= profit:
                    return 3, address(arg1), stor10[idx].field_0
                mem[_441 + 192] = 0
                require stor3[address(msg.sender)]
                mem[0] = arg1
                mem[32] = 14
                require ext_code.size(stor14[address(arg1)])
                call stor14[address(arg1)].getEthToTokenInputPrice(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor10[idx].field_0
                require ext_call.success
                mem[_441 + 224] = 0
                mem[_441 + 256] = 0
                if msize < _441 + 288:
                    mem[_441 + 288] = 5
                    mem[64] = _441 + 480
                    mem[_441 + 448] = stor5
                    mem[_441 + 416] = stor6
                    mem[_441 + 384] = stor6
                    mem[_441 + 352] = sub_5f724206[address(arg1)]
                    mem[_441 + 320] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[_441 + 516] = stor5
                    mem[_441 + 548] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_441 + 480 len 64] = ext_call.return_data[0 len 64]
                else:
                    _582 = msize
                    mem[msize] = 5
                    mem[64] = _582 + 192
                    require 4 < mem[_582]
                    mem[_582 + 160] = stor5
                    require 3 < mem[_582]
                    mem[_582 + 128] = stor6
                    require 2 < mem[_582]
                    mem[_582 + 96] = stor6
                    require 1 < mem[_582]
                    mem[_582 + 64] = sub_5f724206[address(arg1)]
                    require 0 < mem[_582]
                    mem[_582 + 32] = arg1
                    require ext_code.size(sub_5f724206[address(arg1)])
                    call sub_5f724206[address(arg1)].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    mem[0] = msg.sender
                    mem[32] = 3
                    require stor3[address(msg.sender)]
                    require 0 < mem[_582]
                    require 2 < mem[_582]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), stor6, ext_call.return_data[0]
                    require ext_call.success
                    require 3 < mem[_582]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require 2 < mem[_582]
                    require 4 < mem[_582]
                    mem[_582 + 228] = stor5
                    mem[_582 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor5, ext_call.return_data[0]
                    mem[_582 + 192 len 64] = ext_call.return_data[0 len 64]
                require ext_call.success
                if ext_call.return_data[0] <= stor10[idx].field_0:
                    s = ext_call.return_data[0] > stor10[idx].field_0
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - stor10[idx].field_0 < profit:
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = ext_call.return_data[0] - stor10[idx].field_0 >= profit
                    s = stor10[idx].field_0
                    idx = idx + 1
                    continue 
        ('ge', ('add', ('ext_call.return_data', 0, 32), ('mul', -1, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor10', 10)))))), ('stor', ('name', 'profit', 11)))
        return 4, address(arg1), stor10[idx].field_0
    return 0
}

function sub_6073dd2c(?) {
    require stor3[address(msg.sender)]
    require stor3[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require stor3[address(msg.sender)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor5, stor6, arg1
    require ext_call.success
    require ext_code.size(sub_ef3405e4[address(arg2)])
    call sub_ef3405e4[address(arg2)].0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor6, address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), stor7, ext_call.return_data[0]
    require ext_call.success
    if arg2 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_call.return_data[0] <= 10000000000 * 10^18
            require ext_call.return_data[0] <= 1000000 * 10^18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - arg1 >= profit:
                    require stor3[address(msg.sender)]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    if arg1 > 0:
                        mem[808 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                           value arg1 wei
                             gas gas_remaining wei
                            args Array(len=5, data=mem[808 len 160]), arg1, 1
                    else:
                        require ext_code.size(stor5)
                        call stor5.0xdd62ed3e with:
                             gas gas_remaining wei
                            args address(this.address), address(ext_call.return_data[0])
                        require ext_call.success
                        if ext_call.return_data[0] < arg1:
                            require ext_code.size(stor5)
                            call stor5.0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), address(ext_call.return_data[0])
                            require ext_call.success
                            require ext_code.size(stor5)
                            if ext_call.return_data[0]:
                                call stor5.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0
                                require ext_call.success
                                require ext_call.return_data[0]
                            call stor5.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg1
                            require ext_call.success
                            require ext_call.return_data[0]
                        mem[808 len 0] = None
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args Array(len=5, data=mem[808 len 160]), arg1, 1
                    require ext_call.success
                    require ext_code.size(stor4)
                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), stor7, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor4)
                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                    require ext_call.success
        else:
            if stor2[stor7]:
                require ext_call.return_data[0] <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if stor2[stor7] >= 18:
                    require stor2[stor7] - 18 <= 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18 > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
                else:
                    require -stor2[stor7] + 18 <= 18
                    require 10^18 * 10^(-stor2[stor7] + 18)
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18) > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18)) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
            else:
                require ext_code.size(stor7)
                call stor7.0x313ce567 with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_call.return_data[0] <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if ext_call.return_data[0] >= 18:
                    require ext_call.return_data[0] - 18 <= 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18 > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
                else:
                    require -ext_call.return_data[0] + 18 <= 18
                    require 10^18 * 10^(-ext_call.return_data[0] + 18)
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18) > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
    else:
        if stor2[address(arg2)]:
            if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_call.return_data[0] <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= stor2[address(arg2)]:
                    require -stor2[address(arg2)] + 18 <= 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[address(arg2)] + 18) / 10^18 > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[address(arg2)] + 18) / 10^18) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
                else:
                    require stor2[address(arg2)] - 18 <= 18
                    require 10^18 * 10^(stor2[address(arg2)] - 18)
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - 18) > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - 18)) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
            else:
                if stor2[stor7]:
                    require ext_call.return_data[0] <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[stor7] >= stor2[address(arg2)]:
                        require stor2[stor7] - stor2[address(arg2)] <= 18
                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[address(arg2)]) / 10^18 > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[address(arg2)]) / 10^18) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                    else:
                        require stor2[address(arg2)] - stor2[stor7] <= 18
                        require 10^18 * 10^(stor2[address(arg2)] - stor2[stor7])
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - stor2[stor7]) > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - stor2[stor7])) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                else:
                    require ext_code.size(stor7)
                    call stor7.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require ext_call.return_data[0] <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if ext_call.return_data[0] >= stor2[address(arg2)]:
                        require ext_call.return_data[0] - stor2[address(arg2)] <= 18
                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[address(arg2)]) / 10^18 > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[address(arg2)]) / 10^18) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                    else:
                        require stor2[address(arg2)] - ext_call.return_data[0] <= 18
                        require 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0])
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0]) > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[address(arg2)] - ext_call.return_data[0])) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
        else:
            require ext_code.size(arg2)
            call arg2.0x313ce567 with:
                 gas gas_remaining wei
            require ext_call.success
            if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_call.return_data[0] <= 10000000000 * 10^18
                require ext_call.return_data[0] <= 1000000 * 10^18
                if 18 >= ext_call.return_data[0]:
                    require -ext_call.return_data[0] + 18 <= 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18 > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
                else:
                    require ext_call.return_data[0] - 18 <= 18
                    require 10^18 * 10^(ext_call.return_data[0] - 18)
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18) > arg1:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)) - arg1 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if arg1 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < arg1:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg1
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), arg1, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(arg2)
                            call arg2.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
            else:
                if stor2[stor7]:
                    require ext_call.return_data[0] <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if stor2[stor7] >= ext_call.return_data[0]:
                        require stor2[stor7] - ext_call.return_data[0] <= 18
                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18 > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                    else:
                        require ext_call.return_data[0] - stor2[stor7] <= 18
                        require 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7]) > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                else:
                    require ext_code.size(stor7)
                    call stor7.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    require ext_call.return_data[0] <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^0 > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^0) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / 10^18 > arg1:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / 10^18) - arg1 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor6)
                                call stor6.0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                if arg1 > 0:
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                else:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < arg1:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor5)
                                        if ext_call.return_data[0]:
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg1
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), arg1, 1
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), stor7, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, 0
                                require ext_call.success
                                require ext_call.return_data[0]
                                require ext_code.size(arg2)
                                call arg2.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor4, ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(stor4)
                                call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0], ext_call.return_data[0]
                                require ext_call.success
}

function sub_d27b9af9(?) {
    require stor3[address(msg.sender)]
    if stor15:
        stor15 = 0
        if stor16 != 1:
            if stor16 != 2:
                if stor16 != 3:
                    if stor16 == 4:
                        require stor3[address(msg.sender)]
                        require stor3[address(msg.sender)]
                        require ext_code.size(stor14[stor17])
                        call stor14[stor17].getEthToTokenInputPrice(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor18
                        require ext_call.success
                        require ext_code.size(sub_5f724206[stor17])
                        call sub_5f724206[stor17].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor17, stor6, ext_call.return_data[0]
                        require ext_call.success
                        require ext_code.size(stor6)
                        call stor6.0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor6, stor5, ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] > stor18:
                            if ext_call.return_data[0] - stor18 >= profit:
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor14[stor17])
                                call stor14[stor17].getEthToTokenInputPrice(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor18
                                require ext_call.success
                                require ext_code.size(stor14[stor17])
                                call stor14[stor17].ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                                   value stor18 wei
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], block.timestamp + 30
                                require ext_call.success
                                require ext_code.size(sub_5f724206[stor17])
                                call sub_5f724206[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(stor17)
                                call stor17.0x70a08231 with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor17)
                                    call stor17.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        require ext_code.size(stor17)
                                        call stor17.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        if ext_call.return_data[0]:
                                            call stor17.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    mem[808 len 0] = None
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args Array(len=5, data=mem[808 len 160]), ext_call.return_data[0], 1
                                    require ext_call.success
                else:
                    require stor3[address(msg.sender)]
                    require stor3[address(msg.sender)]
                    require ext_code.size(stor6)
                    call stor6.0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require stor3[address(msg.sender)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor5, stor6, stor18
                    require ext_call.success
                    require ext_code.size(sub_5f724206[stor17])
                    call sub_5f724206[stor17].0x8da5cb5b with:
                         gas gas_remaining wei
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor6, stor17, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(stor14[stor17])
                    call stor14[stor17].getTokenToEthInputPrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] > stor18:
                        if ext_call.return_data[0] - stor18 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if stor18 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value stor18 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), stor18, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < stor18:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), stor18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), stor18, 1
                            require ext_call.success
                            require ext_code.size(stor14[stor17])
                            call stor14[stor17].getTokenToEthInputPrice(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor17)
                            call stor17.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor14[stor17], 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(stor17)
                            call stor17.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor14[stor17], ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor14[stor17])
                            call stor14[stor17].tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], block.timestamp + 30
                            require ext_call.success
            else:
                require stor3[address(msg.sender)]
                require stor3[address(msg.sender)]
                require ext_code.size(stor4)
                call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args stor7, stor17, stor18
                require ext_call.success
                if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if stor17 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require stor18 <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        require ext_code.size(sub_ef3405e4[stor17])
                        call sub_ef3405e4[stor17].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18
                    else:
                        if stor2[stor17]:
                            require stor18 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor2[stor17] >= 18:
                                require stor2[stor17] - 18 <= 18
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(stor2[stor17] - 18) / 10^18
                            else:
                                require -stor2[stor17] + 18 <= 18
                                require 10^18 * 10^(-stor2[stor17] + 18)
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor17] + 18)
                        else:
                            require ext_code.size(stor17)
                            call stor17.0x313ce567 with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor18 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] >= 18:
                                require ext_call.return_data[0] - 18 <= 18
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                            else:
                                require -ext_call.return_data[0] + 18 <= 18
                                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                else:
                    if stor2[stor7]:
                        if stor17 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require stor18 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if 18 >= stor2[stor7]:
                                require -stor2[stor7] + 18 <= 18
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(-stor2[stor7] + 18) / 10^18
                            else:
                                require stor2[stor7] - 18 <= 18
                                require 10^18 * 10^(stor2[stor7] - 18)
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - 18)
                        else:
                            if stor2[stor17]:
                                require stor18 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if stor2[stor17] >= stor2[stor7]:
                                    require stor2[stor17] - stor2[stor7] <= 18
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(stor2[stor17] - stor2[stor7]) / 10^18
                                else:
                                    require stor2[stor7] - stor2[stor17] <= 18
                                    require 10^18 * 10^(stor2[stor7] - stor2[stor17])
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - stor2[stor17])
                            else:
                                require ext_code.size(stor17)
                                call stor17.0x313ce567 with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor18 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if ext_call.return_data[0] >= stor2[stor7]:
                                    require ext_call.return_data[0] - stor2[stor7] <= 18
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[stor7]) / 10^18
                                else:
                                    require stor2[stor7] - ext_call.return_data[0] <= 18
                                    require 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(stor2[stor7] - ext_call.return_data[0])
                    else:
                        require ext_code.size(stor7)
                        call stor7.0x313ce567 with:
                             gas gas_remaining wei
                        require ext_call.success
                        if stor17 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            require stor18 <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if 18 >= ext_call.return_data[0]:
                                require -ext_call.return_data[0] + 18 <= 18
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                            else:
                                require ext_call.return_data[0] - 18 <= 18
                                require 10^18 * 10^(ext_call.return_data[0] - 18)
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                        else:
                            if stor2[stor17]:
                                require stor18 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                if stor2[stor17] >= ext_call.return_data[0]:
                                    require stor2[stor17] - ext_call.return_data[0] <= 18
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] * 10^(stor2[stor17] - ext_call.return_data[0]) / 10^18
                                else:
                                    require ext_call.return_data[0] - stor2[stor17] <= 18
                                    require 10^18 * 10^(ext_call.return_data[0] - stor2[stor17])
                                    require ext_code.size(sub_ef3405e4[stor17])
                                    call sub_ef3405e4[stor17].0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor17])
                            else:
                                require ext_code.size(stor17)
                                call stor17.0x313ce567 with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor18 <= 10000000000 * 10^18
                                require ext_call.return_data[0] <= 1000000 * 10^18
                                require ext_code.size(sub_ef3405e4[stor17])
                                call sub_ef3405e4[stor17].0x8da5cb5b with:
                                     gas gas_remaining wei
                                require ext_call.success
                                require stor3[address(msg.sender)]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor17, stor6, stor18 * ext_call.return_data[0] / 10^18
                require ext_call.success
                require ext_code.size(stor6)
                call stor6.0x8da5cb5b with:
                     gas gas_remaining wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args stor6, stor5, ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] > stor18:
                    if ext_call.return_data[0] - stor18 >= profit:
                        require stor3[address(msg.sender)]
                        require ext_code.size(stor4)
                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor7, stor17, stor18
                        require ext_call.success
                        require ext_code.size(stor4)
                        call stor4.swapEtherToToken(address arg1, uint256 arg2) with:
                           value stor18 wei
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0]
                        require ext_call.success
                        require ext_code.size(sub_ef3405e4[stor17])
                        call sub_ef3405e4[stor17].0x8da5cb5b with:
                             gas gas_remaining wei
                        require ext_call.success
                        require stor3[address(msg.sender)]
                        require ext_code.size(stor17)
                        call stor17.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(stor17)
                            call stor17.0xdd62ed3e with:
                                 gas gas_remaining wei
                                args address(this.address), address(ext_call.return_data[0])
                            require ext_call.success
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(stor17)
                                call stor17.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                require ext_code.size(stor17)
                                if ext_call.return_data[0]:
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                call stor17.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                                require ext_call.success
                                require ext_call.return_data[0]
                            mem[876 len 0] = None
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args Array(len=5, data=mem[876 len 160]), ext_call.return_data[0], 1
                            require ext_call.success
        else:
            require stor3[address(msg.sender)]
            require stor3[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require stor3[address(msg.sender)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor5, stor6, stor18
            require ext_call.success
            require ext_code.size(sub_ef3405e4[stor17])
            call sub_ef3405e4[stor17].0x8da5cb5b with:
                 gas gas_remaining wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor6, stor17, ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(stor4)
            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor17, stor7, ext_call.return_data[0]
            require ext_call.success
            if stor17 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require ext_call.return_data[0] <= 10000000000 * 10^18
                    require ext_call.return_data[0] <= 1000000 * 10^18
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > stor18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - stor18 >= profit:
                            require stor3[address(msg.sender)]
                            require ext_code.size(stor6)
                            call stor6.0x8da5cb5b with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require stor3[address(msg.sender)]
                            if stor18 > 0:
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value stor18 wei
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), stor18, 1
                            else:
                                require ext_code.size(stor5)
                                call stor5.0xdd62ed3e with:
                                     gas gas_remaining wei
                                    args address(this.address), address(ext_call.return_data[0])
                                require ext_call.success
                                if ext_call.return_data[0] < stor18:
                                    require ext_code.size(stor5)
                                    call stor5.0xdd62ed3e with:
                                         gas gas_remaining wei
                                        args address(this.address), address(ext_call.return_data[0])
                                    require ext_call.success
                                    require ext_code.size(stor5)
                                    if ext_call.return_data[0]:
                                        call stor5.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    call stor5.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), stor18
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                mem[808 len 0] = None
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args Array(len=5, data=mem[808 len 160]), stor18, 1
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor17, stor7, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor17)
                            call stor17.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, 0
                            require ext_call.success
                            require ext_call.return_data[0]
                            require ext_code.size(stor17)
                            call stor17.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4)
                            call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args stor17, ext_call.return_data[0], ext_call.return_data[0]
                            require ext_call.success
                else:
                    if stor2[stor7]:
                        require ext_call.return_data[0] <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if stor2[stor7] >= 18:
                            require stor2[stor7] - 18 <= 18
                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18 > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - 18) / 10^18) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                        else:
                            require -stor2[stor7] + 18 <= 18
                            require 10^18 * 10^(-stor2[stor7] + 18)
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18) > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-stor2[stor7] + 18)) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                    else:
                        require ext_code.size(stor7)
                        call stor7.0x313ce567 with:
                             gas gas_remaining wei
                        require ext_call.success
                        require ext_call.return_data[0] <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if ext_call.return_data[0] >= 18:
                            require ext_call.return_data[0] - 18 <= 18
                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18 > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                        else:
                            require -ext_call.return_data[0] + 18 <= 18
                            require 10^18 * 10^(-ext_call.return_data[0] + 18)
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18) > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
            else:
                if stor2[stor17]:
                    if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_call.return_data[0] <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if 18 >= stor2[stor17]:
                            require -stor2[stor17] + 18 <= 18
                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[stor17] + 18) / 10^18 > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-stor2[stor17] + 18) / 10^18) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                        else:
                            require stor2[stor17] - 18 <= 18
                            require 10^18 * 10^(stor2[stor17] - 18)
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - 18) > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - 18)) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                    else:
                        if stor2[stor7]:
                            require ext_call.return_data[0] <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor2[stor7] >= stor2[stor17]:
                                require stor2[stor7] - stor2[stor17] <= 18
                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[stor17]) / 10^18 > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - stor2[stor17]) / 10^18) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                            else:
                                require stor2[stor17] - stor2[stor7] <= 18
                                require 10^18 * 10^(stor2[stor17] - stor2[stor7])
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - stor2[stor7]) > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - stor2[stor7])) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                        else:
                            require ext_code.size(stor7)
                            call stor7.0x313ce567 with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require ext_call.return_data[0] <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] >= stor2[stor17]:
                                require ext_call.return_data[0] - stor2[stor17] <= 18
                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[stor17]) / 10^18 > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(ext_call.return_data[0] - stor2[stor17]) / 10^18) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                            else:
                                require stor2[stor17] - ext_call.return_data[0] <= 18
                                require 10^18 * 10^(stor2[stor17] - ext_call.return_data[0])
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - ext_call.return_data[0]) > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(stor2[stor17] - ext_call.return_data[0])) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                else:
                    require ext_code.size(stor17)
                    call stor17.0x313ce567 with:
                         gas gas_remaining wei
                    require ext_call.success
                    if stor7 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        require ext_call.return_data[0] <= 10000000000 * 10^18
                        require ext_call.return_data[0] <= 1000000 * 10^18
                        if 18 >= ext_call.return_data[0]:
                            require -ext_call.return_data[0] + 18 <= 18
                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18 > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                        else:
                            require ext_call.return_data[0] - 18 <= 18
                            require 10^18 * 10^(ext_call.return_data[0] - 18)
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18) > stor18:
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)) - stor18 >= profit:
                                    require stor3[address(msg.sender)]
                                    require ext_code.size(stor6)
                                    call stor6.0x8da5cb5b with:
                                         gas gas_remaining wei
                                    require ext_call.success
                                    require stor3[address(msg.sender)]
                                    if stor18 > 0:
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                           value stor18 wei
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    else:
                                        require ext_code.size(stor5)
                                        call stor5.0xdd62ed3e with:
                                             gas gas_remaining wei
                                            args address(this.address), address(ext_call.return_data[0])
                                        require ext_call.success
                                        if ext_call.return_data[0] < stor18:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            require ext_code.size(stor5)
                                            if ext_call.return_data[0]:
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), 0
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            call stor5.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), stor18
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        mem[808 len 0] = None
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args Array(len=5, data=mem[808 len 160]), stor18, 1
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, stor7, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, 0
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor4, ext_call.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(stor4)
                                    call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                    require ext_call.success
                    else:
                        if stor2[stor7]:
                            require ext_call.return_data[0] <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if stor2[stor7] >= ext_call.return_data[0]:
                                require stor2[stor7] - ext_call.return_data[0] <= 18
                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18 > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(stor2[stor7] - ext_call.return_data[0]) / 10^18) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                            else:
                                require ext_call.return_data[0] - stor2[stor7] <= 18
                                require 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7]) > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - stor2[stor7])) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                        else:
                            require ext_code.size(stor7)
                            call stor7.0x313ce567 with:
                                 gas gas_remaining wei
                            require ext_call.success
                            require ext_call.return_data[0] <= 10000000000 * 10^18
                            require ext_call.return_data[0] <= 1000000 * 10^18
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^0 > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^0) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / 10^18 > stor18:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / 10^18) - stor18 >= profit:
                                        require stor3[address(msg.sender)]
                                        require ext_code.size(stor6)
                                        call stor6.0x8da5cb5b with:
                                             gas gas_remaining wei
                                        require ext_call.success
                                        require stor3[address(msg.sender)]
                                        if stor18 > 0:
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                               value stor18 wei
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        else:
                                            require ext_code.size(stor5)
                                            call stor5.0xdd62ed3e with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(ext_call.return_data[0])
                                            require ext_call.success
                                            if ext_call.return_data[0] < stor18:
                                                require ext_code.size(stor5)
                                                call stor5.0xdd62ed3e with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(ext_call.return_data[0])
                                                require ext_call.success
                                                require ext_code.size(stor5)
                                                if ext_call.return_data[0]:
                                                    call stor5.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                call stor5.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), stor18
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            mem[808 len 0] = None
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args Array(len=5, data=mem[808 len 160]), stor18, 1
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, stor7, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        require ext_code.size(stor17)
                                        call stor17.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor4, ext_call.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(stor4)
                                        call stor4.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args stor17, ext_call.return_data[0], ext_call.return_data[0]
                                        require ext_call.success
}



}
