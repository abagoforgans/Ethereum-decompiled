contract main {




// =====================  Runtime code  =====================


const sub_075db1b3(?) = 100000

const sub_08786aac(?) = 20

const sub_1d2a0561(?) = 2

const sub_1e573f0a(?) = 15778476

const sub_20cc6442(?) = 600

const sub_21a57870(?) = 400

const lrcAddress = 0xef68e7c694f40c8202821edf525de3782458639f

const sub_3eb50beb(?) = 0

const sub_4a017b4c(?) = 50

const sub_4baaca7f(?) = 5

const wethAddress = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_50a0c26a(?) = 60

const sub_61da7aca(?) = 30

const sub_62de6139(?) = 5

const sub_9dd58485(?) = 3

const sub_a2f69a59(?) = 1

const sub_adf23f3b(?) = 31556952

const sub_dd9d56fb(?) = 200

const sub_f81205f3(?) = 10

const sub_fed4dd1e(?) = 1000

const LOCK_TIME = 31556952


mapping of struct tokens;
mapping of struct balances;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1].field_0, balances[arg1].field_256, balances[arg1].field_512
}

function sub_b5f5851a(?) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)].field_256
}

function tokens(address arg1) {
    require calldata.size - 4 >= 32
    return tokens[arg1].field_0, tokens[arg1].field_256
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)].field_0
}

function _fallback() payable {
    revert
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
        return 3932760
    if tokens[address(arg1)].field_0 == 3:
        return 327730
    if tokens[address(arg1)].field_0 == 2:
        return 1310920
    if tokens[address(arg1)].field_0 != 1:
        return 3932760
    return 1966480
}

function sub_9becaeca(?) {
    require calldata.size - 4 >= 32
    if balances[address(arg1)].field_256 + 31556952 < block.timestamp:
        return 0
    require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
    staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10 * ext_call.return_data[0] / ext_call.return_data[0] == 10
    if balances[address(arg1)].field_0:
        require balances[address(arg1)].field_0
        require 1000 * balances[address(arg1)].field_0 / balances[address(arg1)].field_0 == 1000
    require 10 * ext_call.return_data[0] / 100000
    if 1000 * balances[address(arg1)].field_0 / 10 * ext_call.return_data[0] / 100000 > 1000:
        return 1000
    return uint16(1000 * balances[address(arg1)].field_0 / 10 * ext_call.return_data[0] / 100000)
}

function getWithdrawableBalance(address arg1) {
    require calldata.size - 4 >= 32
    require balances[address(arg1)].field_512 + balances[address(arg1)].field_0 >= balances[address(arg1)].field_0
    require balances[address(arg1)].field_256 <= block.timestamp
    if block.timestamp - balances[address(arg1)].field_256 < 15778476:
        require balances[address(arg1)].field_512 <= 0
        return -balances[address(arg1)].field_512
    if block.timestamp - balances[address(arg1)].field_256 >= 31556952:
        require balances[address(arg1)].field_512 <= balances[address(arg1)].field_512 + balances[address(arg1)].field_0
        return balances[address(arg1)].field_0
    require 15778476 <= block.timestamp - balances[address(arg1)].field_256
    if balances[address(arg1)].field_512 + balances[address(arg1)].field_0:
        require balances[address(arg1)].field_512 + balances[address(arg1)].field_0
        require (-15778476 * balances[address(arg1)].field_512) - (15778476 * balances[address(arg1)].field_0) + (balances[address(arg1)].field_512 * block.timestamp) + (balances[address(arg1)].field_0 * block.timestamp) - (balances[address(arg1)].field_512 * balances[address(arg1)].field_256) - (balances[address(arg1)].field_0 * balances[address(arg1)].field_256) / balances[address(arg1)].field_512 + balances[address(arg1)].field_0 == block.timestamp + -balances[address(arg1)].field_256 - 15778476
    require balances[address(arg1)].field_512 <= (-15778476 * balances[address(arg1)].field_512) - (15778476 * balances[address(arg1)].field_0) + (balances[address(arg1)].field_512 * block.timestamp) + (balances[address(arg1)].field_0 * block.timestamp) - (balances[address(arg1)].field_512 * balances[address(arg1)].field_256) - (balances[address(arg1)].field_0 * balances[address(arg1)].field_256) / 15778476
    return (((-15778476 * balances[address(arg1)].field_512) - (15778476 * balances[address(arg1)].field_0) + (balances[address(arg1)].field_512 * block.timestamp) + (balances[address(arg1)].field_0 * block.timestamp) - (balances[address(arg1)].field_512 * balances[address(arg1)].field_256) - (balances[address(arg1)].field_0 * balances[address(arg1)].field_256) / 15778476) - balances[address(arg1)].field_512)
}

function sub_f5098e6a(?) {
    require calldata.size - 4 >= 32
    if 0 == arg1:
        revert with 0, 'ZERO_ADDRESS', 0
    if 0xef68e7c694f40c8202821edf525de3782458639f == arg1:
        revert with 0, 'BURN_RATE_FROZEN', 0
    if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == arg1:
        revert with 0, 'BURN_RATE_FROZEN', 0
    if block.timestamp > tokens[address(arg1)].field_256:
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        call 0xef68e7c694f40c8202821edf525de3782458639f.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, 5 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'BURN_FAILURE', 0
        require block.timestamp + 63113904 >= block.timestamp
        tokens[address(arg1)].field_256 = block.timestamp + 63113904
        tokens[address(arg1)].field_0 = 1
        emit 0x8ace79a3: 1, arg1
    else:
        if tokens[address(arg1)].field_0 == 3:
            revert with 0, 'BURN_RATE_MINIMIZED', 0
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        staticcall 0xef68e7c694f40c8202821edf525de3782458639f.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 5 * ext_call.return_data[0] / ext_call.return_data[0] == 5
        require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
        call 0xef68e7c694f40c8202821edf525de3782458639f.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, 5 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'BURN_FAILURE', 0
        require block.timestamp + 63113904 >= block.timestamp
        tokens[address(arg1)].field_256 = block.timestamp + 63113904
        tokens[address(arg1)].field_0++
        emit 0x8ace79a3: (tokens[address(arg1)].field_0 + 1), arg1
    return 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ZERO_VALUE', 0
    require balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0 >= balances[address(msg.sender)].field_0
    require balances[address(msg.sender)].field_256 <= block.timestamp
    if block.timestamp - balances[address(msg.sender)].field_256 < 15778476:
        require balances[address(msg.sender)].field_512 <= 0
        if -balances[address(msg.sender)].field_512 < arg1:
            revert with 0, 'INVALID_VALUE', 0
    else:
        if block.timestamp - balances[address(msg.sender)].field_256 >= 31556952:
            require balances[address(msg.sender)].field_512 <= balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0
            if balances[address(msg.sender)].field_0 < arg1:
                revert with 0, 'INVALID_VALUE', 0
        else:
            require 15778476 <= block.timestamp - balances[address(msg.sender)].field_256
            if balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0:
                require balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0
                require (-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0 == block.timestamp + -balances[address(msg.sender)].field_256 - 15778476
            require balances[address(msg.sender)].field_512 <= (-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / 15778476
            if ((-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / 15778476) - balances[address(msg.sender)].field_512 < arg1:
                revert with 0, 'INVALID_VALUE', 0
    require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
    call 0xef68e7c694f40c8202821edf525de3782458639f.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILURE', 0
    require arg1 <= balances[msg.sender].field_0
    balances[msg.sender].field_0 -= arg1
    require arg1 + balances[msg.sender].field_512 >= balances[msg.sender].field_512
    balances[msg.sender].field_512 += arg1
    return 1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'INVALID_VALUE', 0
    if balances[msg.sender].field_0 > 0:
        require balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0 >= balances[address(msg.sender)].field_0
        require balances[address(msg.sender)].field_256 <= block.timestamp
        if block.timestamp - balances[address(msg.sender)].field_256 < 15778476:
            require balances[address(msg.sender)].field_512 <= 0
            if -balances[address(msg.sender)].field_512 == balances[msg.sender].field_0:
                revert with 0, 'INVALID_STATE', 0
        else:
            if block.timestamp - balances[address(msg.sender)].field_256 >= 31556952:
                require balances[address(msg.sender)].field_512 <= balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0
                if balances[address(msg.sender)].field_0 == balances[msg.sender].field_0:
                    revert with 0, 'INVALID_STATE', 0
            else:
                require 15778476 <= block.timestamp - balances[address(msg.sender)].field_256
                if balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0:
                    require balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0
                    require (-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / balances[address(msg.sender)].field_512 + balances[address(msg.sender)].field_0 == block.timestamp + -balances[address(msg.sender)].field_256 - 15778476
                require balances[address(msg.sender)].field_512 <= (-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / 15778476
                if ((-15778476 * balances[address(msg.sender)].field_512) - (15778476 * balances[address(msg.sender)].field_0) + (balances[address(msg.sender)].field_512 * block.timestamp) + (balances[address(msg.sender)].field_0 * block.timestamp) - (balances[address(msg.sender)].field_512 * balances[address(msg.sender)].field_256) - (balances[address(msg.sender)].field_0 * balances[address(msg.sender)].field_256) / 15778476) - balances[address(msg.sender)].field_512 == balances[msg.sender].field_0:
                    revert with 0, 'INVALID_STATE', 0
    require ext_code.size(0xef68e7c694f40c8202821edf525de3782458639f)
    call 0xef68e7c694f40c8202821edf525de3782458639f.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILURE', 0
    require arg1 + balances[msg.sender].field_0 >= balances[msg.sender].field_0
    require balances[msg.sender].field_256 <= block.timestamp
    if block.timestamp - balances[msg.sender].field_256:
        require block.timestamp - balances[msg.sender].field_256
        require (block.timestamp * arg1) - (balances[msg.sender].field_256 * arg1) / block.timestamp - balances[msg.sender].field_256 == arg1
    require arg1 + balances[msg.sender].field_0
    require ((block.timestamp * arg1) - (balances[msg.sender].field_256 * arg1) / arg1 + balances[msg.sender].field_0) + balances[msg.sender].field_256 >= balances[msg.sender].field_256
    balances[msg.sender].field_0 += arg1
    balances[msg.sender].field_256 += (block.timestamp * arg1) - (balances[msg.sender].field_256 * arg1) / arg1 + balances[msg.sender].field_0
    balances[msg.sender].field_512 = 0
    return 1
}



}
