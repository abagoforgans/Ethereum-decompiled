contract main {




// =====================  Runtime code  =====================


const wallet = 0xf127f01730663c8697744fce795b67acc479dbcc

const sub_7b9cd8c2(?) = eth.balance(this.address)


address owner;
address ownership;
uint256 activeDuration;
uint256 sub_905e1e0b;
uint256 sub_cfefde00;
uint256 sub_c2b8ab40;
uint256 stor6;
mapping of struct sub_75930627;
mapping of uint256 sub_4ba6c647;
mapping of address sub_c6dd330e;
mapping of uint256 sub_aacb5eee;
mapping of address sub_3caa98c4;
mapping of struct sub_616e5b9a;
mapping of uint256 sub_50d01aa4;
uint8 paused; offset 160
uint128 stor14; offset 160
address oracleAddress;
mapping of uint8 stor15;
mapping of uint256 sub_791d66a1;
mapping of address sub_04912aa0;
uint256 sub_c02663af;

function sub_04912aa0(?) {
    return sub_04912aa0[arg1]
}

function sub_3caa98c4(?) {
    return sub_3caa98c4[arg1]
}

function activeDuration() {
    return activeDuration
}

function sub_4ba6c647(?) {
    return sub_4ba6c647[arg1]
}

function sub_50d01aa4(?) {
    return sub_50d01aa4[arg1]
}

function paused() {
    return bool(paused)
}

function ownership() {
    return ownership
}

function sub_616e5b9a(?) {
    return sub_616e5b9a[arg1].field_0
}

function sub_75930627(?) {
    return sub_75930627[arg1].field_0, 
           bool(sub_75930627[arg1].field_256),
           sub_75930627[arg1].field_512,
           sub_75930627[arg1].field_768,
           sub_75930627[arg1].field_1024,
           sub_75930627[arg1].field_1280
}

function sub_791d66a1(?) {
    return sub_791d66a1[arg1]
}

function owner() {
    return owner
}

function sub_905e1e0b(?) {
    return sub_905e1e0b
}

function sub_a3bdbddb(?) {
    return bool(stor15[arg1])
}

function oracleAddress() {
    return oracleAddress
}

function sub_aacb5eee(?) {
    return sub_aacb5eee[arg1]
}

function sub_c02663af(?) {
    return sub_c02663af
}

function sub_c2b8ab40(?) {
    return sub_c2b8ab40
}

function sub_c6dd330e(?) {
    return sub_c6dd330e[arg1]
}

function sub_cfefde00(?) {
    return sub_cfefde00
}

function currentOrderId() {
    return (stor6 - 1)
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_036674b2(?) {
    if bool(stor15[address(arg1)]) != 1:
        return 0
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4d5745f9(?) {
    require msg.sender == owner
    stor15[address(arg1)] = 0
    emit 0xcf5339e9: address(arg1), 0
}

function sub_ce3af87a(?) {
    require msg.sender == owner
    stor15[address(arg1)] = 1
    emit 0xcf5339e9: address(arg1), 1
}

function pause(bool arg1) {
    require msg.sender == owner
    stor14 = Mask(96, 0, arg1)
    emit 0x8174639d: bool(paused), msg.sender
}

function _fallback() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    emit 0xb69fd6ce: msg.sender
    revert
}

function setOracleAddress(address arg1) {
    require msg.sender == owner
    emit 0x79aadc46: oracleAddress, arg1
    oracleAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6ec8b253(?) {
    require oracleAddress
    require ext_code.size(oracleAddress)
    call oracleAddress.0x2e3cff56 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_73547794(?) {
    require oracleAddress
    require ext_code.size(oracleAddress)
    call oracleAddress.0x95adc2f2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function drainEther() {
    require msg.sender == owner
    if bool(paused) != 1:
        revert with 0, 'currently active'
    call 0xf127f01730663c8697744fce795b67acc479dbcc with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9550fb35: msg.sender, eth.balance(this.address)
}

function getPrice(uint256 arg1, uint256 arg2) {
    require oracleAddress
    require ext_code.size(oracleAddress)
    call oracleAddress.0x5cf4ee91 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Price Unset'
    return ext_call.return_data[0]
}

function withdraw() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if paused:
        revert with 0, 'already deactivated'
    if sub_791d66a1[address(msg.sender)] <= 0:
        revert with 0, 'Balances Empty'
    sub_791d66a1[address(msg.sender)] = 0
    call msg.sender with:
       value sub_791d66a1[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogWithdrawal(sub_791d66a1[address(msg.sender)], msg.sender);
}

function bet(uint256 arg1) payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if paused:
        revert with 0, 'already deactivated'
    require msg.sender
    require stor6 >= arg1
    require sub_c6dd330e[arg1] != msg.sender
    require block.timestamp < sub_75930627[arg1].field_1024
    require not sub_50d01aa4[arg1]
    sub_50d01aa4[arg1] = 1
    require sub_616e5b9a[arg1].field_0 == msg.value
    require sub_75930627[arg1].field_1280 + block.timestamp >= sub_75930627[arg1].field_1280
    sub_75930627[arg1].field_1280 += block.timestamp
    sub_3caa98c4[arg1] = msg.sender
    require sub_aacb5eee[address(msg.sender)] + 1 >= sub_aacb5eee[address(msg.sender)]
    sub_aacb5eee[address(msg.sender)]++
    require sub_616e5b9a[arg1].field_0 + msg.value >= sub_616e5b9a[arg1].field_0
    sub_616e5b9a[arg1].field_0 += msg.value
    emit 0x420a0705: arg1, msg.sender
}

function sub_5b70a46c(?) payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if paused:
        revert with 0, 'already deactivated'
    require msg.sender
    require msg.value == 5 * 10^16
    require oracleAddress
    require ext_code.size(oracleAddress)
    call oracleAddress.0x2e3cff56 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require oracleAddress
    require ext_code.size(oracleAddress)
    call oracleAddress.0x95adc2f2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 >= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    sub_c6dd330e[stor6] = msg.sender
    require sub_4ba6c647[address(msg.sender)] + 1 >= sub_4ba6c647[address(msg.sender)]
    sub_4ba6c647[address(msg.sender)]++
    require sub_616e5b9a[stor6].field_0 + msg.value >= sub_616e5b9a[stor6].field_0
    sub_616e5b9a[stor6].field_0 += msg.value
    sub_75930627[stor6].field_0 = arg1
    sub_75930627[stor6].field_256 = uint8(arg2)
    require sub_75930627[stor6].field_512 + block.timestamp >= sub_75930627[stor6].field_512
    sub_75930627[stor6].field_512 += block.timestamp
    require block.timestamp + activeDuration >= block.timestamp
    sub_75930627[stor6].field_768 = block.timestamp + activeDuration
    require block.timestamp + sub_905e1e0b >= block.timestamp
    sub_75930627[stor6].field_1024 = block.timestamp + sub_905e1e0b
    stor6++
    emit 0x923ef230: (stor6 - 1), msg.sender
}

function finalize(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if paused:
        revert with 0, 'already deactivated'
    require sub_50d01aa4[arg1] != 2
    if bool(stor15[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized'
    if stor6 < arg1:
        revert with 0, 'Invalid OrderId'
    require sub_75930627[arg1].field_768 + sub_cfefde00 >= sub_75930627[arg1].field_768
    if block.timestamp <= sub_75930627[arg1].field_768 + sub_cfefde00:
        revert with 0, 'Premature Finalization'
    if sub_50d01aa4[arg1] != 1:
        if not sub_50d01aa4[arg1]:
            if paused:
                revert with 0, 'already deactivated'
            require not sub_50d01aa4[arg1]
            sub_616e5b9a[arg1].field_0 = 0
            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
            emit 0x40294883: arg1, msg.sender
    else:
        if paused:
            revert with 0, 'already deactivated'
        if sub_50d01aa4[arg1] != 1:
            revert with 0, 'Invalid Status'
        if not sub_c2b8ab40:
            require stor6 >= arg1
            require stor6 >= arg1
            require (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 >= sub_75930627[arg1].field_1280 % 3600 / 60 % 24
            require (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 >= sub_75930627[arg1].field_768 % 3600 / 60 % 24
            require oracleAddress
            require ext_code.size(oracleAddress)
            call oracleAddress.0x5cf4ee91 with:
                 gas gas_remaining wei
                args sub_75930627[arg1].field_0, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Price Unset'
            require oracleAddress
            require ext_code.size(oracleAddress)
            call oracleAddress.0x5cf4ee91 with:
                 gas gas_remaining wei
                args sub_75930627[arg1].field_0, (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Price Unset'
            if bool(sub_75930627[arg1].field_256) != 1:
                if sub_75930627[arg1].field_256:
                    if bool(sub_75930627[arg1].field_256) != 1:
                        sub_04912aa0[arg1] = 0
                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                        if sub_616e5b9a[arg1].field_0 <= 0:
                            revert with 0, 'Invalid Order Balance'
                        sub_616e5b9a[arg1].field_0 = 0
                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            sub_04912aa0[arg1] = 0
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            if sub_3caa98c4[arg1]:
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                            else:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                        if sub_616e5b9a[arg1].field_0 <= 0:
                            revert with 0, 'Invalid Order Balance'
                        sub_616e5b9a[arg1].field_0 = 0
                        if sub_c6dd330e[arg1]:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                            emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                        else:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if sub_75930627[arg1].field_256:
                            if bool(sub_75930627[arg1].field_256) != 1:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_3caa98c4[arg1]:
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if bool(sub_75930627[arg1].field_256) != 1:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
            else:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                    if sub_616e5b9a[arg1].field_0 <= 0:
                        revert with 0, 'Invalid Order Balance'
                    sub_616e5b9a[arg1].field_0 = 0
                    if sub_c6dd330e[arg1]:
                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                        emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                    else:
                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                else:
                    if sub_75930627[arg1].field_256:
                        if bool(sub_75930627[arg1].field_256) != 1:
                            sub_04912aa0[arg1] = 0
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_3caa98c4[arg1]:
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            if sub_c6dd330e[arg1]:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                                emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                            else:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if sub_75930627[arg1].field_256:
                                if bool(sub_75930627[arg1].field_256) != 1:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if bool(sub_75930627[arg1].field_256) != 1:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 3600 / 60 % 24) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            if sub_3caa98c4[arg1]:
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                            else:
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
        else:
            if sub_c2b8ab40 != 1:
                require oracleAddress
                require ext_code.size(oracleAddress)
                call oracleAddress.0x5cf4ee91 with:
                     gas gas_remaining wei
                    args sub_75930627[arg1].field_0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Price Unset'
                require oracleAddress
                require ext_code.size(oracleAddress)
                call oracleAddress.0x5cf4ee91 with:
                     gas gas_remaining wei
                    args sub_75930627[arg1].field_0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Price Unset'
                if bool(sub_75930627[arg1].field_256) != 1:
                    if sub_75930627[arg1].field_256:
                        if bool(sub_75930627[arg1].field_256) != 1:
                            sub_04912aa0[arg1] = 0
                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_3caa98c4[arg1]:
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            if sub_c6dd330e[arg1]:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                                emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                            else:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if sub_75930627[arg1].field_256:
                                if bool(sub_75930627[arg1].field_256) != 1:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if bool(sub_75930627[arg1].field_256) != 1:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            if sub_3caa98c4[arg1]:
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                            else:
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                        if sub_616e5b9a[arg1].field_0 <= 0:
                            revert with 0, 'Invalid Order Balance'
                        sub_616e5b9a[arg1].field_0 = 0
                        if sub_c6dd330e[arg1]:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                            emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                        else:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if sub_75930627[arg1].field_256:
                            if bool(sub_75930627[arg1].field_256) != 1:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_c6dd330e[arg1]:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if sub_75930627[arg1].field_256:
                                    if bool(sub_75930627[arg1].field_256) != 1:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            if sub_3caa98c4[arg1]:
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                            else:
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if bool(sub_75930627[arg1].field_256) != 1:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                sub_04912aa0[arg1] = 0
                                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                                if sub_616e5b9a[arg1].field_0 <= 0:
                                                    revert with 0, 'Invalid Order Balance'
                                                sub_616e5b9a[arg1].field_0 = 0
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                            else:
                                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                                emit 0x312212f1: arg1, 1, ext_call.return_data[0], 1, ext_call.return_data[0]
                                                if sub_616e5b9a[arg1].field_0 <= 0:
                                                    revert with 0, 'Invalid Order Balance'
                                                sub_616e5b9a[arg1].field_0 = 0
                                                if sub_3caa98c4[arg1]:
                                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                                else:
                                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
            else:
                require stor6 >= arg1
                require stor6 >= arg1
                require (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 >= sub_75930627[arg1].field_1280 % 24 * 3600 / 3600
                require (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 >= sub_75930627[arg1].field_768 % 24 * 3600 / 3600
                require oracleAddress
                require ext_code.size(oracleAddress)
                call oracleAddress.0x5cf4ee91 with:
                     gas gas_remaining wei
                    args sub_75930627[arg1].field_0, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Price Unset'
                require oracleAddress
                require ext_code.size(oracleAddress)
                call oracleAddress.0x5cf4ee91 with:
                     gas gas_remaining wei
                    args sub_75930627[arg1].field_0, (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Price Unset'
                if bool(sub_75930627[arg1].field_256) != 1:
                    if sub_75930627[arg1].field_256:
                        if bool(sub_75930627[arg1].field_256) != 1:
                            sub_04912aa0[arg1] = 0
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_3caa98c4[arg1]:
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                            if sub_616e5b9a[arg1].field_0 <= 0:
                                revert with 0, 'Invalid Order Balance'
                            sub_616e5b9a[arg1].field_0 = 0
                            if sub_c6dd330e[arg1]:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                                emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                            else:
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if sub_75930627[arg1].field_256:
                                if bool(sub_75930627[arg1].field_256) != 1:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if bool(sub_75930627[arg1].field_256) != 1:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            if sub_3caa98c4[arg1]:
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                            else:
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                        if sub_616e5b9a[arg1].field_0 <= 0:
                            revert with 0, 'Invalid Order Balance'
                        sub_616e5b9a[arg1].field_0 = 0
                        if sub_c6dd330e[arg1]:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                            emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                        else:
                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                    else:
                        if sub_75930627[arg1].field_256:
                            if bool(sub_75930627[arg1].field_256) != 1:
                                sub_04912aa0[arg1] = 0
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    sub_04912aa0[arg1] = 0
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                    emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                    if sub_616e5b9a[arg1].field_0 <= 0:
                                        revert with 0, 'Invalid Order Balance'
                                    sub_616e5b9a[arg1].field_0 = 0
                                    if sub_3caa98c4[arg1]:
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                        emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                    else:
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                sub_04912aa0[arg1] = sub_c6dd330e[arg1]
                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                if sub_616e5b9a[arg1].field_0 <= 0:
                                    revert with 0, 'Invalid Order Balance'
                                sub_616e5b9a[arg1].field_0 = 0
                                if sub_c6dd330e[arg1]:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_0
                                    emit 0xa1513502: arg1, sub_c6dd330e[arg1]
                                else:
                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                            else:
                                if sub_75930627[arg1].field_256:
                                    if bool(sub_75930627[arg1].field_256) != 1:
                                        sub_04912aa0[arg1] = 0
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                        sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                        require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                        sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                        emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            if sub_3caa98c4[arg1]:
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                            else:
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                else:
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                        emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                        if sub_616e5b9a[arg1].field_0 <= 0:
                                            revert with 0, 'Invalid Order Balance'
                                        sub_616e5b9a[arg1].field_0 = 0
                                        if sub_3caa98c4[arg1]:
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                            emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                        else:
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                    else:
                                        if bool(sub_75930627[arg1].field_256) != 1:
                                            sub_04912aa0[arg1] = 0
                                            emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                            if sub_616e5b9a[arg1].field_0 <= 0:
                                                revert with 0, 'Invalid Order Balance'
                                            sub_616e5b9a[arg1].field_0 = 0
                                            require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                            sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                            require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                            sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                            emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                        else:
                                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                                sub_04912aa0[arg1] = 0
                                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                                if sub_616e5b9a[arg1].field_0 <= 0:
                                                    revert with 0, 'Invalid Order Balance'
                                                sub_616e5b9a[arg1].field_0 = 0
                                                require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
                                            else:
                                                sub_04912aa0[arg1] = sub_3caa98c4[arg1]
                                                emit 0x312212f1: arg1, (sub_75930627[arg1].field_1280 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0], (sub_75930627[arg1].field_768 % 24 * 3600 / 3600) + 1 % 24, ext_call.return_data[0]
                                                if sub_616e5b9a[arg1].field_0 <= 0:
                                                    revert with 0, 'Invalid Order Balance'
                                                sub_616e5b9a[arg1].field_0 = 0
                                                if sub_3caa98c4[arg1]:
                                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_0 >= sub_791d66a1[stor11[arg1]]
                                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_0
                                                    emit 0xa1513502: arg1, sub_3caa98c4[arg1]
                                                else:
                                                    require sub_791d66a1[stor9[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor9[arg1]]
                                                    sub_791d66a1[stor9[arg1]] += sub_616e5b9a[arg1].field_1
                                                    require sub_791d66a1[stor11[arg1]] + sub_616e5b9a[arg1].field_1 >= sub_791d66a1[stor11[arg1]]
                                                    sub_791d66a1[stor11[arg1]] += sub_616e5b9a[arg1].field_1
                                                    emit 0xfaa3f01f: arg1, sub_c6dd330e[arg1], sub_3caa98c4[arg1]
    if arg1 <= sub_c02663af:
        revert with 0, 'Invalid orderId'
    sub_c02663af = arg1
    sub_50d01aa4[arg1] = 2
}



}
