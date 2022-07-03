contract main {




// =====================  Runtime code  =====================


const sub_0fe48e52(?) = 700000000 * 10^18

const sub_1e6e9a1b(?) = 700000 * 10^18

const sub_b6c050dd(?) = 1000

const sub_f796aa6c(?) = 200000 * 10^18


address sub_801f1c7fAddress;
address bnbTokenAddress;
uint256 startBlock;
uint256 endBlock;
address owner;
address receiverAddress;
uint256 sub_b6e4b666;
uint256 sub_312be2a7;
uint256 batchNumber;
uint256 sub_0729839f;
uint256 totalStock;
uint8 closed;
uint8 goalReached; offset 8
mapping of struct records;

function sub_0729839f(?) payable {
    return sub_0729839f
}

function endBlock() payable {
    return endBlock
}

function bnbToken() payable {
    return bnbTokenAddress
}

function sub_312be2a7(?) payable {
    return sub_312be2a7
}

function records(address arg1) payable {
    require calldata.size - 4 >= 32
    return records[arg1].field_0, records[arg1].field_256
}

function startBlock() payable {
    return startBlock
}

function closed() payable {
    return bool(closed)
}

function goalReached() payable {
    return bool(goalReached)
}

function sub_801f1c7f(?) payable {
    return sub_801f1c7fAddress
}

function owner() payable {
    return owner
}

function totalStock() payable {
    return totalStock
}

function sub_b6e4b666(?) payable {
    return sub_b6e4b666
}

function batchNumber() payable {
    return batchNumber
}

function receiver() payable {
    return receiverAddress
}

function _fallback() payable {
    revert
}

function sub_ea0cd5f3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 1000:
        revert with 0, 'The batch number is too large.'
    if arg1 != 1:
        return (10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000)
    return 1522108 * 10^18
}

function close() payable {
    if owner != msg.sender:
        revert with 0, 'Invalid sender.'
    if closed:
        revert with 0, 'Already closed.'
    if block.number <= endBlock:
        if batchNumber != 1001:
            revert with 0, 'Condition unmet.'
    if sub_b6e4b666 >= 200000 * 10^18:
        goalReached = 1
    closed = 1
    return 1
}

function ratio() payable {
    require totalStock
    s = totalStock
    t = sub_0729839f
    u = batchNumber
    idx = 10^18
    v = 0
    while idx:
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

function withdraw() payable {
    if not closed:
        revert with 0, 'Is underway.'
    if not goalReached:
        if not records[msg.sender].field_0:
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
        if receiverAddress != msg.sender:
            revert with 0, 'Invalid sender.'
        require ext_code.size(sub_801f1c7fAddress)
        staticcall sub_801f1c7fAddress.0x70a08231 with:
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
        if ext_call.return_data[0]:
            require ext_code.size(sub_801f1c7fAddress)
            call sub_801f1c7fAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'The balance is empty.'
            if ext_call.return_data[0]:
                require ext_code.size(sub_801f1c7fAddress)
                call sub_801f1c7fAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(bnbTokenAddress)
            call bnbTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawal(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
    return 1
}

function exchange() payable {
    if block.number < startBlock:
        revert with 0, 'Coming soon.'
    if block.number > endBlock:
        revert with 0, 'End of time.'
    if batchNumber > 1000:
        revert with 0, 'Invalid batch number.'
    if closed:
        revert with 0, 'Resonance closed.'
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
    if ext_call.return_data[0] > -sub_b6e4b666 + 700000 * 10^18:
        revert with 0, 'Too much BNB.'
    if ext_call.return_data[0] % 10^18:
        revert with 0, 'BNB must be an integer.'
    require totalStock
    s = totalStock
    t = sub_0729839f
    u = batchNumber
    idx = ext_call.return_data[0]
    v = 0
    while idx:
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
    require ext_code.size(sub_801f1c7fAddress)
    staticcall sub_801f1c7fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < v:
        revert with 0, 'Lack of FDS token.'
    if u > 1001:
        revert with 0, 'Invalid batch number.'
    batchNumber = u
    sub_0729839f = t
    totalStock = s
    require ext_call.return_data[0] + sub_b6e4b666 >= sub_b6e4b666
    sub_b6e4b666 += ext_call.return_data[0]
    require v <= sub_312be2a7
    sub_312be2a7 -= v
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
    require ext_code.size(sub_801f1c7fAddress)
    call sub_801f1c7fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, v
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Exchange(ext_call.return_data[0], v, msg.sender);
    return 1
}

function sub_738fdc67(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 1000:
        revert with 0, 'The batch number is too large.'
    if arg1 == 1:
        s = 700 * 10^18
        t = 1522108 * 10^18
        idx = 10^18
        u = 0
        while idx:
            if idx == s:
                require t + u >= u
                require arg1 + 1 >= arg1
                if arg1 + 1 != 1:
                    s = s
                    t = 10^18 * (-1087220 * 1166736111111111111 * (arg1 + 1)^2 / 10^18) + (2391884 * (arg1 - 500)^2) + 924137 * 10^6 / 10 / 100000
                    idx = 0
                    u = t + u
                    continue 
                s = s
                t = 1522108 * 10^18
                idx = 0
                u = t + u
                continue 
            if idx <= s:
                require (152210800 * 10^18 * idx / 70000 * 10^18) + u >= u
                require 152210800 * 10^18 * idx / 70000 * 10^18 <= t
                require idx <= s
                s = s - idx
                t = t - (152210800 * 10^18 * idx / 70000 * 10^18)
                idx = 0
                u = (152210800 * 10^18 * idx / 70000 * 10^18) + u
                continue 
            require t + u >= u
            require s <= idx
            require arg1 + 1 >= arg1
            if arg1 + 1 != 1:
                s = 700 * 10^18
                t = 10^18 * (-1087220 * 1166736111111111111 * (arg1 + 1)^2 / 10^18) + (2391884 * (arg1 - 500)^2) + 924137 * 10^6 / 10 / 100000
                idx = idx - s
                u = t + u
                continue 
            s = 700 * 10^18
            t = 1522108 * 10^18
            idx = idx - s
            u = t + u
            continue 
        return u
    require 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    s = 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    t = 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000
    u = arg1
    idx = 10^18
    v = 0
    while idx:
        if idx == 70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100:
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
        if idx <= 70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100:
            require (100 * idx * s / 70000 * 10^18) + v >= v
            require 100 * idx * s / 70000 * 10^18 <= t
            require idx <= 70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100
            s = s
            t = t - (100 * idx * s / 70000 * 10^18)
            u = u
            idx = 0
            v = (100 * idx * s / 70000 * 10^18) + v
            continue 
        require t + v >= v
        require 70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100 <= idx
        require u + 1 >= u
        if u + 1 != 1:
            s = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            t = 10^18 * (-1087220 * 1166736111111111111 * (u + 1)^2 / 10^18) + (2391884 * (u - 500)^2) + 924137 * 10^6 / 10 / 100000
            u = u + 1
            idx = idx - (70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100)
            v = t + v
            continue 
        s = 1522108 * 10^18
        t = 1522108 * 10^18
        u = u + 1
        idx = idx - (70000000000000000000000 * 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 10^18 * (-1087220 * 1166736111111111111 * arg1^2 / 10^18) + (2391884 * (arg1 - 501)^2) + 924137 * 10^6 / 10 / 100000 / 100)
        v = t + v
        continue 
    return v
}



}
