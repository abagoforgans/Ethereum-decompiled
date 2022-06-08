contract main {




// =====================  Runtime code  =====================


#
#  - sub_f863b9a6(?)
#
const sub_befcabbd(?) = (720 * 24 * 3600)

const sub_e3ae3172(?) = 2

const sub_f4680036(?) = 10^18

const SECONDS_IN_DAY = (24 * 3600)


address borrowerAddress;
address lenderAddress;
address priceOracleAddress;
uint256 sub_16a410cf;
uint256 sub_d59624b4;
address loanTokenAddress;
uint256 sub_c63c1ca1;
uint256 sub_fceb5ea2;
uint256 sub_3f20b4c9;
uint256 sub_0cf24ba1;
uint256 sub_e1754eb2;
uint256 sub_f2424506;
uint256 sub_d95d73f1;
uint256 sub_25b01982;
uint256 gracePeriod;
uint256 stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;
uint256 stor19; offset 8
uint256 stor19;
uint256 stor20;
uint8 stor21;
uint8 stor21; offset 8
uint8 stor21; offset 16
uint8 stor21; offset 24
uint8 sub_d44a32ca; offset 32
uint256 stor21; offset 24
uint256 stor21; offset 16
uint256 stor21; offset 8
uint256 sub_9a14f79d;

function loanToken() {
    return loanTokenAddress
}

function sub_0cf24ba1(?) {
    return sub_0cf24ba1
}

function sub_16a410cf(?) {
    return sub_16a410cf
}

function sub_25b01982(?) {
    return sub_25b01982
}

function priceOracle() {
    return priceOracleAddress
}

function isSettled() {
    return bool(uint8(stor21.field_16))
}

function sub_393b6054(?) {
    return bool(uint8(stor21.field_8))
}

function sub_3f20b4c9(?) {
    return sub_3f20b4c9
}

function sub_6b7d4ed7(?) {
    return bool(uint8(stor21.field_0))
}

function borrower() {
    return borrowerAddress
}

function sub_9a14f79d(?) {
    return sub_9a14f79d
}

function gracePeriod() {
    return gracePeriod
}

function lender() {
    return lenderAddress
}

function sub_c63c1ca1(?) {
    return sub_c63c1ca1
}

function sub_d44a32ca(?) {
    return sub_d44a32ca
}

function sub_d59624b4(?) {
    return sub_d59624b4
}

function sub_d75f0da7(?) {
    return bool(uint8(stor21.field_24))
}

function sub_d95d73f1(?) {
    return sub_d95d73f1
}

function sub_e1754eb2(?) {
    return sub_e1754eb2
}

function sub_f2424506(?) {
    return sub_f2424506
}

function sub_fceb5ea2(?) {
    return sub_fceb5ea2
}

function _fallback() payable {
    revert
}

function sub_cda3097c(?) {
    return stor15, stor16, stor17, stor18
}

function sub_5bf72bdb(?) {
    return uint256(stor19.field_0), stor20
}

function sub_e3be5317(?) {
    if not stor20:
        return not not stor20
    return block.timestamp >= stor20 + sub_3f20b4c9
}

function isBinding() {
    if not uint8(stor21.field_0):
        return bool(uint8(stor21.field_0))
    return bool(uint8(stor21.field_8))
}

function sub_946dc52c(?) {
    if lenderAddress != msg.sender:
        revert with 0, 'NOT_LENDER'
    uint256(stor19.field_0) = 0
    stor20 = 0
    emit 0xeebb88ed: block.timestamp, arg1
}

function setPriceOracle(address arg1) {
    if priceOracleAddress != msg.sender:
        revert with 0, 'SENDER'
    require arg1
    priceOracleAddress = arg1
    emit 0x2f125edf: block.timestamp, arg1
}

function sub_438eace8(?) {
    if sub_d44a32ca <= 0:
        return sub_d59624b4
    require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
    require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
    return (sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca))
}

function sub_23b9dabf(?) {
    if lenderAddress != msg.sender:
        revert with 0, 'NOT_LENDER'
    if not arg1:
        revert with 0, 'REQ_0_ID'
    if stor15 != arg1:
        revert with 0, 'REQ_ID'
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    emit 0x6f6b5836: block.timestamp, arg1
}

function contractBalance() {
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableAmount() {
    if block.timestamp < sub_d59624b4:
        return 0
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_690d2247(?) {
    if borrowerAddress != msg.sender:
        revert with 0, 'NOT_BORROWER'
    if block.timestamp >= sub_16a410cf:
        revert with 0, 'EFF_DATE'
    if uint8(stor21.field_8):
        revert with 0, 'CONSENT'
    Mask(248, 0, stor21.field_8) = 1
    emit 0x6d5c0546: block.timestamp
    if uint8(stor21.field_0):
        if uint8(stor21.field_8):
            emit 0x309a21b0: block.timestamp
}

function sub_d14e3c72(?) {
    if not uint8(stor21.field_0):
        revert with 0, 'BINDING'
    if not uint8(stor21.field_8):
        revert with 0, 'BINDING'
    if uint8(stor21.field_24):
        revert with 0, 'BINDING'
    if borrowerAddress != msg.sender:
        revert with 0, 'NOT_BORROWER'
    if stor15:
        revert with 0, 'REQ_PENDING'
    if arg1 < sub_fceb5ea2:
        revert with 0, 'REQ_MIN_AMOUNT'
    if not arg2:
        revert with 0, 'BENEFICIARY'
    stor15 = block.timestamp
    stor16 = arg2
    stor17 = block.timestamp
    stor18 = arg1
    emit 0xa6e95aae: block.timestamp, arg1, arg2, block.timestamp
}

function sub_e838acc6(?) {
    if lenderAddress != msg.sender:
        revert with 0, 'NOT_LENDER'
    if block.timestamp >= sub_16a410cf:
        revert with 0, 'EFF_DATE'
    if uint8(stor21.field_0):
        revert with 0, 'CONSENT'
    uint8(stor21.field_0) = 1
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args lenderAddress, address(this.address), sub_c63c1ca1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7b2c45e8: block.timestamp
    if uint8(stor21.field_0):
        if uint8(stor21.field_8):
            emit 0x309a21b0: block.timestamp
}

function sub_8e018ef9(?) {
    if uint256(stor19.field_0) != arg1:
        revert with 0, 'EXT_PERIOD_N'
    if lenderAddress != msg.sender:
        if not stor20:
            revert with 0, 'EXT_COND'
        if block.timestamp < stor20 + sub_3f20b4c9:
            revert with 0, 'EXT_COND'
    uint256(stor19.field_0) = 0
    stor20 = 0
    sub_d44a32ca = arg1
    if sub_d44a32ca <= 0:
        emit 0xe8591a17: block.timestamp, arg1 << 248, sub_d59624b4, msg.sender
    else:
        require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
        require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
        emit 0xe8591a17: block.timestamp, arg1 << 248, sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca), msg.sender
}

function sub_42886aef(?) {
    if lenderAddress != msg.sender:
        revert with 0, 'NOT_LENDER'
    if block.timestamp < sub_d59624b4:
        revert with 0, 'MAT_DATE'
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'AMOUNT'
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args lenderAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(block.timestamp, ext_call.return_data[0]);
}

function sub_e69d83f5(?) {
    if not uint8(stor21.field_0):
        revert with 0, 'BINDING'
    if not uint8(stor21.field_8):
        revert with 0, 'BINDING'
    if uint8(stor21.field_24):
        revert with 0, 'BINDING'
    if borrowerAddress != msg.sender:
        revert with 0, 'NOT_BORROWER'
    if sub_d44a32ca <= 0:
        require 720 * 24 * 3600 <= sub_d59624b4
        if block.timestamp > sub_d59624b4 - (720 * 24 * 3600):
            revert with 0, 'EXT_DATE'
    else:
        require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
        require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
        require 720 * 24 * 3600 <= sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca)
        if block.timestamp > sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) - (720 * 24 * 3600):
            revert with 0, 'EXT_DATE'
    if uint256(stor19.field_0):
        revert with 0, 'EXT_PERIOD_EXISTS'
    if arg1 != uint8(sub_d44a32ca + 1):
        revert with 0, 'EXT_PERIOD_N'
    if arg1 > 2:
        revert with 0, 'EXT_PERIOD_MAX'
    uint8(stor19.field_0) = arg1
    Mask(248, 0, stor19.field_8) = 0
    stor20 = block.timestamp
    emit 0xbf2d7c82: block.timestamp, arg1
}

function sub_083f3ca7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    if lenderAddress != msg.sender:
        revert with 0, 'NOT_LENDER'
    Mask(232, 0, stor21.field_24) = 1
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _32 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
        require ext_code.size(address(_32))
        call address(_32).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _32
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfb2659e5: block.timestamp, address(arg3), Array(len=arg2.length, data=arg2[all])
}

function settlement(uint256 arg1) {
    if borrowerAddress != msg.sender:
        revert with 0, 'NOT_BORROWER'
    require not uint8(stor21.field_16)
    require not uint8(stor21.field_24)
    if sub_d44a32ca <= 0:
        if block.timestamp <= sub_d59624b4 + gracePeriod:
            if arg1 != sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                revert with 0, 'SETTLEMENT_AMOUNT'
        else:
            if sub_d44a32ca <= 0:
                if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                    if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require not 0 / sub_25b01982
                        if arg1:
                            revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        require sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
                        require (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18
                        idx = 1
                        s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                            idx = idx + 1
                            s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require not 0 / sub_25b01982
                        if not s:
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require 10^18 * s / s == 10^18
                            if arg1 != 10^18 * s / 10^18:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                else:
                    if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                            if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                        if arg1:
                            revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        require sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
                        require (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18
                        idx = 1
                        s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                            idx = idx + 1
                            s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                            continue 
                        if not sub_25b01982:
                            if not s:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require s
                                require 10^18 * s / s == 10^18
                                if arg1 != 10^18 * s / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require sub_25b01982
                            require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                            if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                if not s:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require s
                                    require 10^18 * s / s == 10^18
                                    if arg1 != 10^18 * s / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                if not s:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require s
                                    require (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / s == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                    if arg1 != (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
            else:
                require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
                require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
                if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                    if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require not 0 / sub_25b01982
                        if arg1:
                            revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        require sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
                        require (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18
                        idx = 1
                        s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                            idx = idx + 1
                            s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require not 0 / sub_25b01982
                        if not s:
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require 10^18 * s / s == 10^18
                            if arg1 != 10^18 * s / 10^18:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                else:
                    if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if sub_25b01982:
                            require sub_25b01982
                            require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                            if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                        if arg1:
                            revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        require sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
                        require (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18
                        idx = 1
                        s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                            idx = idx + 1
                            s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                            continue 
                        if not sub_25b01982:
                            if not s:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require s
                                require 10^18 * s / s == 10^18
                                if arg1 != 10^18 * s / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require sub_25b01982
                            require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                            if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                if not s:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require s
                                    require 10^18 * s / s == 10^18
                                    if arg1 != 10^18 * s / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                if not s:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require s
                                    require (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / s == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                    if arg1 != (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
    else:
        idx = 0
        s = sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
        while idx < sub_d44a32ca:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require s
            require (10^18 * s) + (sub_f2424506 * s) + (sub_e1754eb2 * s) / s == sub_f2424506 + sub_e1754eb2 + 10^18
            idx = idx + 1
            s = (10^18 * s) + (sub_f2424506 * s) + (sub_e1754eb2 * s) / 10^18
            continue 
        if sub_d44a32ca <= 0:
            if block.timestamp <= sub_d59624b4 + gracePeriod:
                if arg1 != s:
                    revert with 0, 'SETTLEMENT_AMOUNT'
            else:
                if sub_d44a32ca <= 0:
                    if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if not t:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require t
                                require 10^18 * t / t == 10^18
                                if arg1 != 10^18 * t / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not t:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require t
                                    require 10^18 * t / t == 10^18
                                    if arg1 != 10^18 * t / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require 10^18 * t / t == 10^18
                                        if arg1 != 10^18 * t / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                        if arg1 != (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                else:
                    require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
                    require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
                    if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if not t:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require t
                                require 10^18 * t / t == 10^18
                                if arg1 != 10^18 * t / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not t:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require t
                                    require 10^18 * t / t == 10^18
                                    if arg1 != 10^18 * t / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require 10^18 * t / t == 10^18
                                        if arg1 != 10^18 * t / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                        if arg1 != (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
        else:
            require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
            require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
            if block.timestamp <= sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) + gracePeriod:
                if arg1 != s:
                    revert with 0, 'SETTLEMENT_AMOUNT'
            else:
                if sub_d44a32ca <= 0:
                    if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if not t:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require t
                                require 10^18 * t / t == 10^18
                                if arg1 != 10^18 * t / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not t:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require t
                                    require 10^18 * t / t == 10^18
                                    if arg1 != 10^18 * t / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require 10^18 * t / t == 10^18
                                        if arg1 != 10^18 * t / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                        if arg1 != (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                else:
                    require 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca
                    require sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4
                    if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require not 0 / sub_25b01982
                            if not t:
                                if arg1:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require t
                                require 10^18 * t / t == 10^18
                                if arg1 != 10^18 * t / 10^18:
                                    revert with 0, 'SETTLEMENT_AMOUNT'
                    else:
                        if not s:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if sub_25b01982:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                            if arg1:
                                revert with 0, 'SETTLEMENT_AMOUNT'
                        else:
                            require s
                            require (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18
                            idx = 1
                            t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                if not t:
                                    idx = idx + 1
                                    t = 0
                                    continue 
                                require t
                                require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                idx = idx + 1
                                t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not t:
                                    if arg1:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require t
                                    require 10^18 * t / t == 10^18
                                    if arg1 != 10^18 * t / 10^18:
                                        revert with 0, 'SETTLEMENT_AMOUNT'
                            else:
                                require sub_25b01982
                                require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require 10^18 * t / t == 10^18
                                        if arg1 != 10^18 * t / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                else:
                                    require sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600
                                    require 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600
                                    if not t:
                                        if arg1:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
                                    else:
                                        require t
                                        require (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18
                                        if arg1 != (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18:
                                            revert with 0, 'SETTLEMENT_AMOUNT'
    Mask(240, 0, stor21.field_16) = 1
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args borrowerAddress, lenderAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(loanTokenAddress)
    call loanTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(loanTokenAddress)
        call loanTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args lenderAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit 0x3b9add23: block.timestamp, arg1
}

function outstandingAmount() {
    if sub_d44a32ca <= 0:
        if block.timestamp <= sub_d59624b4 + gracePeriod:
            return (sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d)
        if sub_d44a32ca <= 0:
            if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                    idx = 1
                    while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                        idx = idx + 1
                        continue 
                    if not sub_25b01982:
                        return 0
                    if sub_25b01982:
                        if not 0 / sub_25b01982:
                            return 0
                else:
                    if sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        if (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18:
                            idx = 1
                            s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                                idx = idx + 1
                                s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not s:
                                    return 0
                                if s:
                                    if 10^18 * s / s == 10^18:
                                        return (10^18 * s / 10^18)
                            else:
                                if sub_25b01982:
                                    if not 0 / sub_25b01982:
                                        if not s:
                                            return 0
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                return (10^18 * s / 10^18)
            else:
                if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                    idx = 1
                    while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                        idx = idx + 1
                        continue 
                    if not sub_25b01982:
                        return 0
                    if sub_25b01982:
                        if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                            if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                return 0
                            if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                    return 0
                else:
                    if sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                        if (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18:
                            idx = 1
                            s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                            while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                require s
                                require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                                idx = idx + 1
                                s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                                continue 
                            if not sub_25b01982:
                                if not s:
                                    return 0
                                if s:
                                    if 10^18 * s / s == 10^18:
                                        return (10^18 * s / 10^18)
                            else:
                                if sub_25b01982:
                                    if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                        if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                            if not s:
                                                return 0
                                            if s:
                                                if 10^18 * s / s == 10^18:
                                                    return (10^18 * s / 10^18)
                                        else:
                                            if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                    if not s:
                                                        return 0
                                                    if s:
                                                        if (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / s == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                            return ((10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / 10^18)
        else:
            if 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca:
                if sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4:
                    if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                        if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if not sub_25b01982:
                                return 0
                            if sub_25b01982:
                                if not 0 / sub_25b01982:
                                    return 0
                        else:
                            if sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                                if (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18:
                                    idx = 1
                                    s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                                    while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                                        idx = idx + 1
                                        s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                                        continue 
                                    if not sub_25b01982:
                                        if not s:
                                            return 0
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                return (10^18 * s / 10^18)
                                    else:
                                        if sub_25b01982:
                                            if not 0 / sub_25b01982:
                                                if not s:
                                                    return 0
                                                if s:
                                                    if 10^18 * s / s == 10^18:
                                                        return (10^18 * s / 10^18)
                    else:
                        if not sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                            idx = 1
                            while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                idx = idx + 1
                                continue 
                            if not sub_25b01982:
                                return 0
                            if sub_25b01982:
                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                    if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                        return 0
                                    if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                        if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                            return 0
                        else:
                            if sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d:
                                if (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d == sub_d95d73f1 + 10^18:
                                    idx = 1
                                    s = (10^18 * sub_0cf24ba1) + (sub_d95d73f1 * sub_0cf24ba1) - (10^18 * sub_c63c1ca1) - (sub_d95d73f1 * sub_c63c1ca1) + (10^18 * sub_9a14f79d) + (sub_d95d73f1 * sub_9a14f79d) / 10^18
                                    while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        require s
                                        require (10^18 * s) + (sub_25b01982 * s) / s == sub_25b01982 + 10^18
                                        idx = idx + 1
                                        s = (10^18 * s) + (sub_25b01982 * s) / 10^18
                                        continue 
                                    if not sub_25b01982:
                                        if not s:
                                            return 0
                                        if s:
                                            if 10^18 * s / s == 10^18:
                                                return (10^18 * s / 10^18)
                                    else:
                                        if sub_25b01982:
                                            if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                    if not s:
                                                        return 0
                                                    if s:
                                                        if 10^18 * s / s == 10^18:
                                                            return (10^18 * s / 10^18)
                                                else:
                                                    if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                        if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                            if not s:
                                                                return 0
                                                            if s:
                                                                if (10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / s == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                                    return ((10^18 * s) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * s) / 10^18)
    else:
        idx = 0
        s = sub_0cf24ba1 - sub_c63c1ca1 + sub_9a14f79d
        while idx < sub_d44a32ca:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require s
            require (10^18 * s) + (sub_f2424506 * s) + (sub_e1754eb2 * s) / s == sub_f2424506 + sub_e1754eb2 + 10^18
            idx = idx + 1
            s = (10^18 * s) + (sub_f2424506 * s) + (sub_e1754eb2 * s) / 10^18
            continue 
        if sub_d44a32ca <= 0:
            if block.timestamp <= sub_d59624b4 + gracePeriod:
                return s
            if sub_d44a32ca <= 0:
                if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                    if not s:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if not sub_25b01982:
                            return 0
                        if sub_25b01982:
                            if not 0 / sub_25b01982:
                                return 0
                    else:
                        if s:
                            if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                idx = 1
                                t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                    if not t:
                                        idx = idx + 1
                                        t = 0
                                        continue 
                                    require t
                                    require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                    idx = idx + 1
                                    t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                    continue 
                                if not sub_25b01982:
                                    if not t:
                                        return 0
                                    if t:
                                        if 10^18 * t / t == 10^18:
                                            return (10^18 * t / 10^18)
                                else:
                                    if sub_25b01982:
                                        if not 0 / sub_25b01982:
                                            if not t:
                                                return 0
                                            if t:
                                                if 10^18 * t / t == 10^18:
                                                    return (10^18 * t / 10^18)
                else:
                    if not s:
                        idx = 1
                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                            idx = idx + 1
                            continue 
                        if not sub_25b01982:
                            return 0
                        if sub_25b01982:
                            if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    return 0
                                if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                    if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                        return 0
                    else:
                        if s:
                            if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                idx = 1
                                t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                    if not t:
                                        idx = idx + 1
                                        t = 0
                                        continue 
                                    require t
                                    require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                    idx = idx + 1
                                    t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                    continue 
                                if not sub_25b01982:
                                    if not t:
                                        return 0
                                    if t:
                                        if 10^18 * t / t == 10^18:
                                            return (10^18 * t / 10^18)
                                else:
                                    if sub_25b01982:
                                        if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                            if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                if not t:
                                                    return 0
                                                if t:
                                                    if 10^18 * t / t == 10^18:
                                                        return (10^18 * t / 10^18)
                                            else:
                                                if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                    if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                        if not t:
                                                            return 0
                                                        if t:
                                                            if (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                                return ((10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18)
            else:
                if 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca:
                    if sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4:
                        if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                            if not s:
                                idx = 1
                                while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                    idx = idx + 1
                                    continue 
                                if not sub_25b01982:
                                    return 0
                                if sub_25b01982:
                                    if not 0 / sub_25b01982:
                                        return 0
                            else:
                                if s:
                                    if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                        idx = 1
                                        t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                            if not t:
                                                idx = idx + 1
                                                t = 0
                                                continue 
                                            require t
                                            require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                            idx = idx + 1
                                            t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                            continue 
                                        if not sub_25b01982:
                                            if not t:
                                                return 0
                                            if t:
                                                if 10^18 * t / t == 10^18:
                                                    return (10^18 * t / 10^18)
                                        else:
                                            if sub_25b01982:
                                                if not 0 / sub_25b01982:
                                                    if not t:
                                                        return 0
                                                    if t:
                                                        if 10^18 * t / t == 10^18:
                                                            return (10^18 * t / 10^18)
                        else:
                            if not s:
                                idx = 1
                                while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                    idx = idx + 1
                                    continue 
                                if not sub_25b01982:
                                    return 0
                                if sub_25b01982:
                                    if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                        if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                            return 0
                                        if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                            if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                return 0
                            else:
                                if s:
                                    if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                        idx = 1
                                        t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                            if not t:
                                                idx = idx + 1
                                                t = 0
                                                continue 
                                            require t
                                            require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                            idx = idx + 1
                                            t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                            continue 
                                        if not sub_25b01982:
                                            if not t:
                                                return 0
                                            if t:
                                                if 10^18 * t / t == 10^18:
                                                    return (10^18 * t / 10^18)
                                        else:
                                            if sub_25b01982:
                                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                    if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                        if not t:
                                                            return 0
                                                        if t:
                                                            if 10^18 * t / t == 10^18:
                                                                return (10^18 * t / 10^18)
                                                    else:
                                                        if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                            if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                                if not t:
                                                                    return 0
                                                                if t:
                                                                    if (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                                        return ((10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18)
        else:
            if 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca:
                if sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4:
                    if block.timestamp <= sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) + gracePeriod:
                        return s
                    if sub_d44a32ca <= 0:
                        if block.timestamp - sub_d59624b4 / 720 * 24 * 3600 <= 0:
                            if not s:
                                idx = 1
                                while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                    idx = idx + 1
                                    continue 
                                if not sub_25b01982:
                                    return 0
                                if sub_25b01982:
                                    if not 0 / sub_25b01982:
                                        return 0
                            else:
                                if s:
                                    if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                        idx = 1
                                        t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                            if not t:
                                                idx = idx + 1
                                                t = 0
                                                continue 
                                            require t
                                            require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                            idx = idx + 1
                                            t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                            continue 
                                        if not sub_25b01982:
                                            if not t:
                                                return 0
                                            if t:
                                                if 10^18 * t / t == 10^18:
                                                    return (10^18 * t / 10^18)
                                        else:
                                            if sub_25b01982:
                                                if not 0 / sub_25b01982:
                                                    if not t:
                                                        return 0
                                                    if t:
                                                        if 10^18 * t / t == 10^18:
                                                            return (10^18 * t / 10^18)
                        else:
                            if not s:
                                idx = 1
                                while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                    idx = idx + 1
                                    continue 
                                if not sub_25b01982:
                                    return 0
                                if sub_25b01982:
                                    if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                        if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                            return 0
                                        if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                            if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                return 0
                            else:
                                if s:
                                    if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                        idx = 1
                                        t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                        while idx < block.timestamp - sub_d59624b4 / 720 * 24 * 3600:
                                            if not t:
                                                idx = idx + 1
                                                t = 0
                                                continue 
                                            require t
                                            require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                            idx = idx + 1
                                            t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                            continue 
                                        if not sub_25b01982:
                                            if not t:
                                                return 0
                                            if t:
                                                if 10^18 * t / t == 10^18:
                                                    return (10^18 * t / 10^18)
                                        else:
                                            if sub_25b01982:
                                                if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                    if not sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                        if not t:
                                                            return 0
                                                        if t:
                                                            if 10^18 * t / t == 10^18:
                                                                return (10^18 * t / 10^18)
                                                    else:
                                                        if sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600:
                                                            if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                                if not t:
                                                                    return 0
                                                                if t:
                                                                    if (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                                        return ((10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18)
                    else:
                        if 720 * 24 * 3600 * sub_d44a32ca / 720 * 24 * 3600 == sub_d44a32ca:
                            if sub_d59624b4 + (720 * 24 * 3600 * sub_d44a32ca) >= sub_d59624b4:
                                if block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600 <= 0:
                                    if not s:
                                        idx = 1
                                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                            idx = idx + 1
                                            continue 
                                        if not sub_25b01982:
                                            return 0
                                        if sub_25b01982:
                                            if not 0 / sub_25b01982:
                                                return 0
                                    else:
                                        if s:
                                            if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                                idx = 1
                                                t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                                while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                                    if not t:
                                                        idx = idx + 1
                                                        t = 0
                                                        continue 
                                                    require t
                                                    require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                                    idx = idx + 1
                                                    t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                                    continue 
                                                if not sub_25b01982:
                                                    if not t:
                                                        return 0
                                                    if t:
                                                        if 10^18 * t / t == 10^18:
                                                            return (10^18 * t / 10^18)
                                                else:
                                                    if sub_25b01982:
                                                        if not 0 / sub_25b01982:
                                                            if not t:
                                                                return 0
                                                            if t:
                                                                if 10^18 * t / t == 10^18:
                                                                    return (10^18 * t / 10^18)
                                else:
                                    if not s:
                                        idx = 1
                                        while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                            idx = idx + 1
                                            continue 
                                        if not sub_25b01982:
                                            return 0
                                        if sub_25b01982:
                                            if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                    return 0
                                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                    if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                        return 0
                                    else:
                                        if s:
                                            if (10^18 * s) + (sub_d95d73f1 * s) / s == sub_d95d73f1 + 10^18:
                                                idx = 1
                                                t = (10^18 * s) + (sub_d95d73f1 * s) / 10^18
                                                while idx < block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) / 720 * 24 * 3600:
                                                    if not t:
                                                        idx = idx + 1
                                                        t = 0
                                                        continue 
                                                    require t
                                                    require (10^18 * t) + (sub_25b01982 * t) / t == sub_25b01982 + 10^18
                                                    idx = idx + 1
                                                    t = (10^18 * t) + (sub_25b01982 * t) / 10^18
                                                    continue 
                                                if not sub_25b01982:
                                                    if not t:
                                                        return 0
                                                    if t:
                                                        if 10^18 * t / t == 10^18:
                                                            return (10^18 * t / 10^18)
                                                else:
                                                    if sub_25b01982:
                                                        if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 == block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                            if not sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                                if not t:
                                                                    return 0
                                                                if t:
                                                                    if 10^18 * t / t == 10^18:
                                                                        return (10^18 * t / 10^18)
                                                            else:
                                                                if sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600:
                                                                    if 24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 == 24 * 3600:
                                                                        if not t:
                                                                            return 0
                                                                        if t:
                                                                            if (10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / t == (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600) + 10^18:
                                                                                return ((10^18 * t) + (24 * 3600 * sub_25b01982 * block.timestamp - sub_d59624b4 - (720 * 24 * 3600 * sub_d44a32ca) % 720 * 24 * 3600 / 24 * 3600 / 720 * 24 * 3600 * t) / 10^18)
    revert
}



}
