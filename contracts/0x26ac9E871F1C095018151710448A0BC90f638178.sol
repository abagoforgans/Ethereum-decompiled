contract main {




// =====================  Runtime code  =====================


#
#  - exeSequence(uint256 arg1, uint256[] arg2)
#
address adminAddress;
mapping of struct tokens;
uint8 marketStatus;
uint16 makerFeeRateE4; offset 8
uint16 takerFeeRateE4; offset 24
uint16 withdrawFeeRateE4; offset 40
uint64 lastDepositIndex; offset 56
uint64 stor3;
uint64 stor3; offset 64
mapping of struct traders;
mapping of struct sub_a45df835;
mapping of struct sub_37cb2162;
mapping of struct deposits;
uint256 storA6EE;

function makerFeeRateE4() {
    return makerFeeRateE4
}

function sub_37cb2162(?) {
    return sub_37cb2162[Mask(224, 0, arg1)].field_0, 
           sub_37cb2162[Mask(224, 0, arg1)].field_0,
           sub_37cb2162[Mask(224, 0, arg1)].field_0,
           sub_37cb2162[Mask(224, 0, arg1)].field_0,
           sub_37cb2162[Mask(224, 0, arg1)].field_112,
           sub_37cb2162[Mask(224, 0, arg1)].field_0
}

function deposits(uint64 arg1) {
    return deposits[arg1].field_0, deposits[arg1].field_0, deposits[arg1].field_176
}

function traders(address arg1) {
    return traders[arg1].field_0, traders[arg1].field_160
}

function withdrawFeeRateE4() {
    return withdrawFeeRateE4
}

function lastDepositIndex() {
    return lastDepositIndex
}

function sub_a45df835(?) {
    return sub_a45df835[Mask(176, 0, arg1)].field_0, sub_a45df835[Mask(176, 0, arg1)].field_64
}

function takerFeeRateE4() {
    return takerFeeRateE4
}

function marketStatus() {
    return marketStatus
}

function tokens(uint16 arg1) {
    mem[128] = tokens[arg1].field_0
    idx = 128
    s = 0
    while tokens[arg1].length + 96 > idx:
        mem[idx + 32] = tokens[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=tokens[arg1].length, data=mem[128 len tokens[arg1].length]), 
           tokens[arg1].field_256,
           tokens[arg1].field_256,
           tokens[arg1].field_512
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function exeStatus() {
    return uint64(stor3.field_0), uint64(stor3.field_64)
}

function changeMarketStatus(uint8 arg1) {
    require msg.sender == adminAddress
    require marketStatus != 2
    marketStatus = arg1
    emit ChangeMarketStatusEvent(arg1);
}

function setWithdrawAddr(address arg1) {
    require arg1
    require not traders[msg.sender].field_0
    traders[msg.sender].field_0 = arg1
    emit SetWithdrawAddrEvent(msg.sender, arg1);
}

function depositEth(address arg1) payable {
    require not marketStatus
    require arg1
    require msg.value >= storA6EE
    require calldata.size == 36
    require uint64(msg.value / 10^10)
    lastDepositIndex = uint64(lastDepositIndex + 1)
    deposits[stor2 + 1 << 192].field_0 = arg1
    deposits[stor2 + 1 << 192].field_160 = 0
    deposits[stor2 + 1 << 192].field_176 = uint64(msg.value / 10^10)
    emit DepositEvent(address arg1, uint16 arg2, string arg3, uint64 arg4, uint64 arg5):
                      address(arg1),
                      0,
                      160,
                      msg.value / 10^10 << 192,
                      uint64(lastDepositIndex + 1),
                      3,
                      'ETH',
}

function withdrawEth(address arg1) {
    require arg1
    require calldata.size == 36
    if sub_a45df835[address(arg1)].field_64:
        sub_a45df835[address(arg1)].field_64 = 0
        if traders[address(arg1)].field_0:
            call traders[address(arg1)].field_0 with:
               value 10^10 * sub_a45df835[address(arg1)].field_64 wei
                 gas 2300 * is_zero(value) wei
        else:
            call arg1 with:
               value 10^10 * sub_a45df835[address(arg1)].field_64 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithdrawEvent(address arg1, uint16 arg2, string arg3, uint64 arg4, uint64 arg5):
                           address(arg1),
                           0,
                           160,
                           sub_a45df835[address(arg1)].field_0,
                           uint64(stor3.field_64),
                           3,
                           'ETH',
}

function setTokenInfo(uint16 arg1, string arg2, address arg3, uint64 arg4, uint256 arg5) {
    require msg.sender == adminAddress
    require not marketStatus
    require arg4
    mem[ceil32(arg2.length) + 416] = tokens[arg1 << 240].field_0
    idx = ceil32(arg2.length) + 416
    s = 0
    while ceil32(arg2.length) + tokens[arg1 << 240].length + 416 > idx + 32:
        mem[idx + 32] = tokens[arg1 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokens[arg1 << 240].field_416:
        tokens[arg1 << 240].field_512 = arg5
        emit SetTokenInfoEvent(arg1 << 240, Array(len=tokens[arg1 << 240].length, data=mem[ceil32(arg2.length) + 416 len tokens[arg1 << 240].length]), tokens[arg1 << 240].field_256, tokens[arg1 << 240].field_256, arg5);
    else:
        tokens[arg1 << 240][].field_0 = Array(len=arg2.length, data=arg2[all])
        tokens[arg1 << 240].field_256 = arg3
        tokens[arg1 << 240].field_416 = arg4
        tokens[arg1 << 240].field_512 = arg5
        emit SetTokenInfoEvent(arg1 << 240, Array(len=arg2.length, data=arg2[all]), address(arg3), arg4 << 192, arg5);
}

function withdrawToken(address arg1, uint16 arg2) {
    require arg1
    require arg2
    require calldata.size == 68
    idx = 384
    s = 0
    while tokens[arg2 << 240].length + 384 > idx + 32:
        mem[idx + 32] = tokens[arg2 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require tokens[arg2 << 240].field_416
    if sub_a45df835[arg1 or uint16(arg2) << 160].field_64:
        sub_a45df835[arg1 or uint16(arg2) << 160].field_64 = 0
        require ext_code.size(tokens[arg2 << 240].field_256)
        if traders[address(arg1)].field_0:
            call tokens[arg2 << 240].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args traders[address(arg1)].field_0, sub_a45df835[arg1 or uint16(arg2) << 160].field_64 * tokens[arg2 << 240].field_416 / 100 * 10^6
        else:
            call tokens[arg2 << 240].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_a45df835[arg1 or uint16(arg2) << 160].field_64 * tokens[arg2 << 240].field_416 / 100 * 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(tokens[arg2 << 240].length) + 576] = tokens[arg2 << 240].field_0
        idx = ceil32(tokens[arg2 << 240].length) + 576
        s = 0
        while ceil32(tokens[arg2 << 240].length) + tokens[arg2 << 240].length + 576 > idx + 32:
            mem[idx + 32] = tokens[arg2 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit WithdrawEvent(address(arg1), arg2 << 240, Array(len=tokens[arg2 << 240].length, data=mem[ceil32(tokens[arg2 << 240].length) + 576 len tokens[arg2 << 240].length + (floor32(tokens[arg2 << 240].length - 1) + -tokens[arg2 << 240].length + 32 % 32)]), sub_a45df835[arg1 or uint16(arg2) << 160].field_0, uint64(stor3.field_0));
}

function depositToken(address arg1, uint16 arg2, uint256 arg3) {
    require not marketStatus
    require arg1
    require arg2
    require calldata.size == 100
    idx = 384
    s = 0
    while tokens[arg2 << 240].length + 384 > idx + 32:
        mem[idx + 32] = tokens[arg2 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg3 >= tokens[arg2 << 240].field_512
    require tokens[arg2 << 240].field_416
    require ext_code.size(tokens[arg2 << 240].field_256)
    call tokens[arg2 << 240].field_256.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 <= 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b
    require tokens[arg2 << 240].field_416
    require 100 * 10^6 * arg3 / tokens[arg2 << 240].field_416 < 18446744073709551616
    require 100 * 10^6 * arg3 / tokens[arg2 << 240].field_416
    lastDepositIndex = uint64(lastDepositIndex + 1)
    deposits[stor2 + 1 << 192].field_0 = arg1
    deposits[stor2 + 1 << 192].field_160 = arg2
    deposits[stor2 + 1 << 192].field_176 = uint64(100 * 10^6 * arg3 / tokens[arg2 << 240].field_416)
    mem[ceil32(tokens[arg2 << 240].length) + 576] = tokens[arg2 << 240].field_0
    idx = ceil32(tokens[arg2 << 240].length) + 576
    s = 0
    while ceil32(tokens[arg2 << 240].length) + tokens[arg2 << 240].length + 576 > idx + 32:
        mem[idx + 32] = tokens[arg2 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit DepositEvent(address(arg1), arg2 << 240, Array(len=tokens[arg2 << 240].length, data=mem[ceil32(tokens[arg2 << 240].length) + 576 len tokens[arg2 << 240].length + (floor32(tokens[arg2 << 240].length - 1) + -tokens[arg2 << 240].length + 32 % 32)]), 100 * 10^6 * arg3 / tokens[arg2 << 240].field_416 << 192, lastDepositIndex + 1 << 192);
}

function transferFee(uint16 arg1, uint64 arg2, address arg3) {
    require msg.sender == adminAddress
    require arg3
    require calldata.size == 100
    if sub_a45df835[arg1 << 240].field_64 > arg2:
        sub_a45df835[arg1 << 240].field_64 = uint64(sub_a45df835[arg1 << 240].field_64 - arg2)
        idx = 512
        s = 0
        while tokens[arg1 << 240].length + 512 > idx + 32:
            mem[idx + 32] = tokens[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            call arg3 with:
               value tokens[arg1 << 240].field_416 * arg2 / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(tokens[arg1 << 240].field_256)
            call tokens[arg1 << 240].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), tokens[arg1 << 240].field_416 * arg2 / 100 * 10^6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TransferFeeEvent(arg1 << 240, arg2 << 192, arg3);
    else:
        sub_a45df835[arg1 << 240].field_64 = 0
        sub_a45df835[arg1 << 240].field_256 = 0
        idx = 512
        s = 0
        while tokens[arg1 << 240].length + 512 > idx + 32:
            mem[idx + 32] = tokens[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            call arg3 with:
               value tokens[arg1 << 240].field_416 * sub_a45df835[arg1 << 240].field_64 / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(tokens[arg1 << 240].field_256)
            call tokens[arg1 << 240].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), tokens[arg1 << 240].field_416 * sub_a45df835[arg1 << 240].field_64 / 100 * 10^6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TransferFeeEvent(arg1 << 240, sub_a45df835[arg1 << 240].field_0, arg3);
}

function sub_96232acf(?) {
    adminAddress = arg1
    mem[96] = 3
    mem[128] = 'ETH'
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    require msg.sender == adminAddress
    require not marketStatus
    mem[416] = tokens[0].length
    mem[448] = tokens[0].field_0
    idx = 448
    s = 0
    while tokens[0].length + 448 > idx + 32:
        mem[idx + 32] = tokens[0][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[288] = 416
    mem[320] = tokens[0].field_256
    mem[352] = tokens[0].field_416
    mem[384] = tokens[0].field_512
    if not tokens[0].field_416:
        tokens[0].field_0 = 0
        tokens[0].field_1 = 3
        tokens[0].field_8 = 'ETH' / 256
        idx = 0
        while tokens[0].length + 31 / 32 > idx:
            tokens[0][idx].field_0 = 0
            idx = idx + 1
            continue 
        tokens[0].field_256 = 0
        tokens[0].field_432 = 15258789062500
        tokens[0].field_512 = 0
        emit SetTokenInfoEvent(uint16 arg1, string arg2, address arg3, uint64 arg4, uint256 arg5):
                               0,
                               160,
                               0,
                               10^18,
                               0,
                               3,
                               'ETH' % 16777216,
    else:
        tokens[0].field_512 = 0
        mem[ceil32(tokens[0].length) + 448] = 0
        mem[ceil32(tokens[0].length) + 512] = tokens[0].field_256
        mem[ceil32(tokens[0].length) + 544] = tokens[0].field_416
        mem[ceil32(tokens[0].length) + 576] = 0
        mem[ceil32(tokens[0].length) + 480] = 160
        mem[ceil32(tokens[0].length) + 608] = tokens[0].length
        mem[ceil32(tokens[0].length) + 640 len ceil32(tokens[0].length)] = mem[448 len ceil32(tokens[0].length)]
        if not tokens[0].length % 32:
            emit SetTokenInfoEvent(uint16 arg1, string arg2, address arg3, uint64 arg4, uint256 arg5):
                                   0,
                                   160,
                                   tokens[0].field_256,
                                   tokens[0].field_256,
                                   0,
                                   tokens[0].length,
                                   mem[448 len tokens[0].length],
        else:
            mem[floor32(tokens[0].length) + ceil32(tokens[0].length) + 640] = mem[floor32(tokens[0].length) + ceil32(tokens[0].length) + -tokens[0].length % 32 + 672 len tokens[0].length % 32]
            emit SetTokenInfoEvent(uint16 arg1, string arg2, address arg3, uint64 arg4, uint256 arg5):
                                   0,
                                   160,
                                   tokens[0].field_256,
                                   tokens[0].field_256,
                                   0,
                                   tokens[0].length,
                                   mem[448 len ceil32(tokens[0].length)],
                                   mem[(2 * ceil32(tokens[0].length)) + 640 len floor32(tokens[0].length) + -ceil32(tokens[0].length) + 32],
    emit DeployMarketEvent()
}



}
