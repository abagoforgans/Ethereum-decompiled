contract main {




// =====================  Runtime code  =====================


const sub_08786aac(?) = 150

const sub_1d2a0561(?) = 2

const sub_20cc6442(?) = 500

const sub_21a57870(?) = 300

const lrcAddress = 0xef68e7c694f40c8202821edf525de3782458639f

const sub_3eb50beb(?) = 0

const sub_4a017b4c(?) = 25

const sub_4baaca7f(?) = 25

const wethAddress = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_50a0c26a(?) = 500

const sub_61da7aca(?) = 300

const sub_62de6139(?) = 1

const sub_9dd58485(?) = 3

const sub_a2f69a59(?) = 1

const sub_adf23f3b(?) = 31556952

const sub_dd9d56fb(?) = 150

const sub_fed4dd1e(?) = 1000


mapping of struct tokens;

function tokens(address arg1) {
    require calldata.size - 4 >= 32
    return tokens[arg1].field_0, tokens[arg1].field_256
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function sub_d895ed21(?) {
    require calldata.size - 4 >= 32
    if block.timestamp > tokens[address(arg1)].field_256:
        return 0
    return tokens[address(arg1)].field_0
}

function getBurnRate(address arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp > tokens[address(arg1)].field_256:
        return 32768500
    if tokens[address(arg1)].field_0 == 3:
        return 1638425
    if tokens[address(arg1)].field_0 == 2:
        return 9830550
    if tokens[address(arg1)].field_0 != 1:
        return 32768500
    return 19661100
}

function sub_f5098e6a(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if 0xef68e7c694f40c8202821edf525de3782458639f == arg1:
        revert with 0, 'BURN_RATE_FROZEN'
    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg1:
        revert with 0, 'BURN_RATE_FROZEN'
    if block.timestamp > tokens[address(arg1)].field_256:
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x70a08231 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0xef68e7c694f40c8202821edf525de3782458639f with:
             gas gas_remaining wei
            args 0, mem[580 len 4]
        if not ext_call.success:
            revert with 0, 'BURN_FAILURE'
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'BURN_FAILURE'
            if not ext_call.return_data[0]:
                revert with 0, 'BURN_FAILURE'
        if block.timestamp + 31556952 < block.timestamp:
            revert with 0, 'INVALID_VALUE'
        tokens[address(arg1)].field_256 = block.timestamp + 31556952
        tokens[address(arg1)].field_0 = 1
        emit 0x8ace79a3: 1, arg1
    else:
        if tokens[address(arg1)].field_0 == 3:
            revert with 0, 'BURN_RATE_MINIMIZED'
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x70a08231 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call 0xef68e7c694f40c8202821edf525de3782458639f with:
             gas gas_remaining wei
            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, 0, 0) << 512, mem[580 len 4]
        if not ext_call.success:
            revert with 0, 'BURN_FAILURE'
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'BURN_FAILURE'
            if not ext_call.return_data[0]:
                revert with 0, 'BURN_FAILURE'
        if block.timestamp + 31556952 < block.timestamp:
            revert with 0, 'INVALID_VALUE'
        tokens[address(arg1)].field_256 = block.timestamp + 31556952
        tokens[address(arg1)].field_0++
        emit 0x8ace79a3: (tokens[address(arg1)].field_0 + 1), arg1
    return 1
}



}
