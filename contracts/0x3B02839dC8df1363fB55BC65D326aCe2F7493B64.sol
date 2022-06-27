contract main {




// =====================  Runtime code  =====================


const sub_930d06d2(?) = 700000000 * 10^18

const sub_b6c050dd(?) = 1000

const sub_f796aa6c(?) = 200000 * 10^18


address testTokenAddress;
address bnbTokenAddress;
uint256 startBlock;
uint256 endBlock;
address owner;
uint256 sub_b6e4b666;
uint256 sub_d025abfc;
uint256 batchNumber;
uint256 sub_0729839f;
uint256 totalStock;
uint8 stor10;
uint8 stor10; offset 8
mapping of struct records;

function sub_0729839f(?) {
    return sub_0729839f
}

function endBlock() {
    return endBlock
}

function bnbToken() {
    return bnbTokenAddress
}

function records(address arg1) {
    require calldata.size - 4 >= 32
    return records[arg1].field_0, records[arg1].field_256
}

function startBlock() {
    return startBlock
}

function closed() {
    return bool(uint8(stor10.field_0))
}

function testToken() {
    return testTokenAddress
}

function goalReached() {
    return bool(uint8(stor10.field_8))
}

function owner() {
    return owner
}

function totalStock() {
    return totalStock
}

function sub_b6e4b666(?) {
    return sub_b6e4b666
}

function batchNumber() {
    return batchNumber
}

function sub_d025abfc(?) {
    return sub_d025abfc
}

function _fallback() payable {
    revert
}

function sub_ea0cd5f3(?) {
    require calldata.size - 4 >= 32
    if arg1 > 1000:
        revert with 0, 'The batch number is too large.'
    if arg1 != 1:
        return ((-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000)
    return 1522108
}

function close() {
    if owner != msg.sender:
        revert with 0, 'Invalid sender.'
    if uint8(stor10.field_0):
        revert with 0, 'Already closed.'
    if block.number <= endBlock:
        if batchNumber != 1001:
            revert with 0, 'Condition unmet.'
    if 200000 * 10^18 <= sub_b6e4b666:
        uint8(stor10.field_8) = 1
    uint8(stor10.field_0) = 1
    return 1
}

function ratio() {
    require totalStock
    s = totalStock
    t = sub_0729839f
    u = batchNumber
    idx = 10^18
    v = 0
    while idx > 0:
        if idx == 70000 * 10^18 * sub_0729839f / totalStock / 100:
            require t + v >= v
            require u + 1 >= u
            if u + 1 != 1:
                s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                u = u + 1
                idx = 0
                v = t + v
                continue 
            s = 1522108 * 10^18
            t = 1522108 * 10^18
            u = u + 1
            idx = 0
            v = t + v
            continue 
        if idx <= 70000 * 10^18 * sub_0729839f / totalStock / 100:
            require (100 * idx * s / 70000 * 10^18) + v >= v
            require 100 * idx * s / 70000 * 10^18 <= t
            require idx <= 70000 * 10^18 * sub_0729839f / totalStock / 100
            s = s
            t = t - (100 * idx * s / 70000 * 10^18)
            u = u
            idx = 0
            v = (100 * idx * s / 70000 * 10^18) + v
            continue 
        require t + v >= v
        require 70000 * 10^18 * sub_0729839f / totalStock / 100 <= idx
        require u + 1 >= u
        if u + 1 != 1:
            s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            u = u + 1
            idx = idx - (70000 * 10^18 * sub_0729839f / totalStock / 100)
            v = t + v
            continue 
        s = 1522108 * 10^18
        t = 1522108 * 10^18
        u = u + 1
        idx = idx - (70000 * 10^18 * sub_0729839f / totalStock / 100)
        v = t + v
        continue 
    return v
}

function withdraw() {
    if not uint8(stor10.field_0):
        revert with 0, 'Is underway.'
    if not uint8(stor10.field_8):
        if 0 >= records[msg.sender].field_0:
            revert with 0, 'The balance is empty.'
        records[msg.sender].field_0 = 0
        records[msg.sender].field_256 = 0
        require ext_code.size(bnbTokenAddress)
        call bnbTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, records[msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawal(records[msg.sender].field_0, 0, msg.sender);
    else:
        if owner != msg.sender:
            revert with 0, 'Bad withdraw.'
        require ext_code.size(testTokenAddress)
        staticcall testTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bnbTokenAddress)
        staticcall bnbTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(testTokenAddress)
            call testTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'The balance is empty.'
            if ext_call.return_data[0] > 0:
                require ext_code.size(testTokenAddress)
                call testTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            require ext_code.size(bnbTokenAddress)
            call bnbTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawal(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
    return 1
}

function ratio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 1000:
        revert with 0, 'The batch number is too large.'
    if arg1 == 1:
        return 2174
    require (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    s = (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    t = (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    u = arg1
    idx = 10^18
    v = 0
    while idx > 0:
        if idx == 70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100:
            require t + v >= v
            require u + 1 >= u
            if u + 1 != 1:
                s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                u = u + 1
                idx = 0
                v = t + v
                continue 
            s = 1522108 * 10^18
            t = 1522108 * 10^18
            u = u + 1
            idx = 0
            v = t + v
            continue 
        if idx <= 70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100:
            require (100 * idx * s / 70000 * 10^18) + v >= v
            require 100 * idx * s / 70000 * 10^18 <= t
            require idx <= 70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100
            s = s
            t = t - (100 * idx * s / 70000 * 10^18)
            u = u
            idx = 0
            v = (100 * idx * s / 70000 * 10^18) + v
            continue 
        require t + v >= v
        require 70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100 <= idx
        require u + 1 >= u
        if u + 1 != 1:
            s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            u = u + 1
            idx = idx - (70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100)
            v = t + v
            continue 
        s = 1522108 * 10^18
        t = 1522108 * 10^18
        u = u + 1
        idx = idx - (70000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100)
        v = t + v
        continue 
    return v
}

function exchange() {
    require ext_code.size(bnbTokenAddress)
    staticcall bnbTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bnbTokenAddress)
    staticcall bnbTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Lack of allowance or balance.'
    if ext_call.return_data[0] % 10^18:
        revert with 0, 'BNB must be an integer.'
    if block.number > endBlock:
        revert with 0, 'End of time.'
    if 1000 < batchNumber:
        revert with 0, 'Invalid batch number.'
    if uint8(stor10.field_0):
        revert with 0, 'Resonance closed.'
    require totalStock
    s = totalStock
    t = sub_0729839f
    u = batchNumber
    idx = ext_call.return_data[0]
    v = 0
    while idx > 0:
        if idx == 70000 * 10^18 * sub_0729839f / totalStock / 100:
            require t + v >= v
            require u + 1 >= u
            if u + 1 != 1:
                s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
                u = u + 1
                idx = 0
                v = t + v
                continue 
            s = 1522108 * 10^18
            t = 1522108 * 10^18
            u = u + 1
            idx = 0
            v = t + v
            continue 
        if idx <= 70000 * 10^18 * sub_0729839f / totalStock / 100:
            require (100 * idx * s / 70000 * 10^18) + v >= v
            require 100 * idx * s / 70000 * 10^18 <= t
            require idx <= 70000 * 10^18 * sub_0729839f / totalStock / 100
            s = s
            t = t - (100 * idx * s / 70000 * 10^18)
            u = u
            idx = 0
            v = (100 * idx * s / 70000 * 10^18) + v
            continue 
        require t + v >= v
        require 70000 * 10^18 * sub_0729839f / totalStock / 100 <= idx
        require u + 1 >= u
        if u + 1 != 1:
            s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            u = u + 1
            idx = idx - (70000 * 10^18 * sub_0729839f / totalStock / 100)
            v = t + v
            continue 
        s = 1522108 * 10^18
        t = 1522108 * 10^18
        u = u + 1
        idx = idx - (70000 * 10^18 * sub_0729839f / totalStock / 100)
        v = t + v
        continue 
    require ext_code.size(testTokenAddress)
    staticcall testTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < v:
        revert with 0, 'Lack of Test token.'
    if u > 1001:
        revert with 0, 'Invalid batch number.'
    batchNumber = u
    sub_0729839f = t
    totalStock = s
    require ext_call.return_data[0] + sub_b6e4b666 >= sub_b6e4b666
    sub_b6e4b666 += ext_call.return_data[0]
    require v <= sub_d025abfc
    sub_d025abfc -= v
    require ext_call.return_data[0] + records[msg.sender].field_0 >= records[msg.sender].field_0
    records[msg.sender].field_0 += ext_call.return_data[0]
    require v + records[msg.sender].field_256 >= records[msg.sender].field_256
    records[msg.sender].field_256 += v
    require ext_code.size(bnbTokenAddress)
    call bnbTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(testTokenAddress)
    call testTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, v
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Exchange(ext_call.return_data[0], v, msg.sender);
    return 1
}



}
