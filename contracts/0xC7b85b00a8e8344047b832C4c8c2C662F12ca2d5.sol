contract main {




// =====================  Runtime code  =====================


address owner;
address dividendTokenAddress;
uint256 RECYCLE_TIME;
mapping of struct dividends;
uint256 sub_8fdce32c;
mapping of uint256 stor5;

function dividendToken() {
    return dividendTokenAddress
}

function RECYCLE_TIME() {
    return RECYCLE_TIME
}

function dividendsCount() {
    return dividends.length
}

function dividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < dividends.length
    return dividends[arg1].field_0, 
           dividends[arg1].field_256,
           dividends[arg1].field_512,
           dividends[arg1].field_768,
           dividends[arg1].field_1024,
           bool(uint8(dividends[arg1].field_1280))
}

function owner() {
    return owner
}

function sub_8fdce32c(?) {
    return sub_8fdce32c
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_555be3a8(?) {
    require sub_8fdce32c <= eth.balance(this.address)
    return (eth.balance(this.address) - sub_8fdce32c)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function depositDividend() payable {
    require msg.value > 0
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.totalSupplyAt(uint256 arg1) with:
            gas gas_remaining wei
           args block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dividends.length++
    dividends[dividends.length].field_0 = block.number - 1
    dividends[dividends.length].field_256 = block.timestamp
    dividends[dividends.length].field_512 = msg.value
    dividends[dividends.length].field_768 = 0
    dividends[dividends.length].field_1024 = ext_call.return_data[0]
    uint8(dividends[dividends.length].field_1280) = 0
    require sub_8fdce32c + msg.value >= sub_8fdce32c
    sub_8fdce32c += msg.value
    emit DividendDeposited(block.number - 1, msg.value, ext_call.return_data[0], dividends.length, msg.sender);
}

function sub_0c26ddd3(?) {
    require sub_8fdce32c <= eth.balance(this.address)
    require eth.balance(this.address) - sub_8fdce32c > 0
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.totalSupplyAt(uint256 arg1) with:
            gas gas_remaining wei
           args block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dividends.length++
    dividends[dividends.length].field_0 = block.number - 1
    dividends[dividends.length].field_256 = block.timestamp
    dividends[dividends.length].field_512 = eth.balance(this.address) - sub_8fdce32c
    dividends[dividends.length].field_768 = 0
    dividends[dividends.length].field_1024 = ext_call.return_data[0]
    uint8(dividends[dividends.length].field_1280) = 0
    require eth.balance(this.address) >= sub_8fdce32c
    sub_8fdce32c = eth.balance(this.address)
    emit DividendDeposited(block.number - 1, msg.value, ext_call.return_data[0], dividends.length, msg.sender);
}

function sub_5923f55b(?) {
    require calldata.size - 4 >= 32
    if arg1 >= dividends.length:
        return 0
    if uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0):
        return 0
    if uint8(dividends[arg1].field_1280):
        return 0
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, dividends[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require dividends[arg1].field_1024 > 0
        if dividends[arg1].field_1024:
            return (0 / dividends[arg1].field_1024)
    else:
        if ext_call.return_data[0]:
            require ext_call.return_data[0] * dividends[arg1].field_512 / ext_call.return_data[0] == dividends[arg1].field_512
            require dividends[arg1].field_1024 > 0
            if dividends[arg1].field_1024:
                return (ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024)
    revert
}

function recycleDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < dividends.length
    require not uint8(dividends[arg1].field_1280)
    require RECYCLE_TIME <= block.timestamp
    require dividends[arg1].field_256 < block.timestamp - RECYCLE_TIME
    require arg1 < dividends.length
    uint8(dividends[arg1].field_1280) = 1
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.totalSupplyAt(uint256 arg1) with:
            gas gas_remaining wei
           args block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require dividends[arg1].field_768 <= dividends[arg1].field_512
    dividends.length++
    dividends[dividends.length].field_0 = block.number - 1
    dividends[dividends.length].field_256 = block.timestamp
    dividends[dividends.length].field_512 = dividends[arg1].field_512 - dividends[arg1].field_768
    dividends[dividends.length].field_768 = 0
    dividends[dividends.length].field_1024 = ext_call.return_data[0]
    uint8(dividends[dividends.length].field_1280) = 0
    emit DividendRecycled(block.number - 1, dividends[arg1].field_512 - dividends[arg1].field_768, ext_call.return_data[0], dividends.length, msg.sender);
}

function sub_a98c0da8(?) {
    if stor5[address(msg.sender)] != dividends.length:
        mem[0] = msg.sender
        mem[32] = 5
        idx = stor[sha3(mem[0 len 64])]
        while idx < dividends.length:
            mem[0] = msg.sender
            mem[32] = (7 * idx) + sha3(3) + 6
            if not uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0):
                require idx < dividends.length
                mem[0] = 3
                if not uint8(dividends[idx].field_1280):
                    if idx < dividends.length:
                        mem[0] = msg.sender
                        mem[32] = (7 * idx) + sha3(3) + 6
                        if not uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0):
                            if not uint8(dividends[idx].field_1280):
                                mem[100] = msg.sender
                                mem[132] = dividends[idx].field_0
                                require ext_code.size(dividendTokenAddress)
                                staticcall dividendTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args msg.sender, dividends[idx].field_0
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require dividends[idx].field_1024 > 0
                                    require dividends[idx].field_1024
                                    require 0 / dividends[idx].field_1024 >= 0
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * dividends[idx].field_512 / ext_call.return_data[0] == dividends[idx].field_512
                                    require dividends[idx].field_1024 > 0
                                    require dividends[idx].field_1024
                                    require ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024 >= 0
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function claimDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < dividends.length
    require not uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0)
    require not uint8(dividends[arg1].field_1280)
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, dividends[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require dividends[arg1].field_1024 > 0
        require dividends[arg1].field_1024
        uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
        require dividends[arg1].field_768 + (0 / dividends[arg1].field_1024) >= dividends[arg1].field_768
        dividends[arg1].field_768 += 0 / dividends[arg1].field_1024
        if 0 / dividends[arg1].field_1024 > 0:
            require 0 / dividends[arg1].field_1024 <= sub_8fdce32c
            sub_8fdce32c -= 0 / dividends[arg1].field_1024
            call msg.sender with:
               value 0 / dividends[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit DividendClaimed(arg1, 0 / dividends[arg1].field_1024, msg.sender);
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * dividends[arg1].field_512 / ext_call.return_data[0] == dividends[arg1].field_512
        require dividends[arg1].field_1024 > 0
        require dividends[arg1].field_1024
        uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
        require dividends[arg1].field_768 + (ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024) >= dividends[arg1].field_768
        dividends[arg1].field_768 += ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024
        if ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024 > 0:
            require ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024 <= sub_8fdce32c
            sub_8fdce32c -= ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024
            call msg.sender with:
               value ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit DividendClaimed(arg1, ext_call.return_data[0] * dividends[arg1].field_512 / dividends[arg1].field_1024, msg.sender);
    if stor5[address(msg.sender)] == arg1:
        stor5[address(msg.sender)] = arg1 + 1
}

function claimDividendAll() {
    require stor5[address(msg.sender)] < dividends.length
    mem[0] = msg.sender
    mem[32] = 5
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    t = 0
    while idx < dividends.length:
        mem[0] = msg.sender
        mem[32] = (7 * idx) + sha3(3) + 6
        if uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < dividends.length
        mem[0] = 3
        if uint8(dividends[idx].field_1280):
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < dividends.length
        require not uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0)
        require not uint8(dividends[idx].field_1280)
        mem[100] = msg.sender
        mem[132] = dividends[idx].field_0
        require ext_code.size(dividendTokenAddress)
        staticcall dividendTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, dividends[idx].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require dividends[idx].field_1024 > 0
            require dividends[idx].field_1024
            uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
            require dividends[idx].field_768 + (0 / dividends[idx].field_1024) >= dividends[idx].field_768
            dividends[idx].field_768 += 0 / dividends[idx].field_1024
            mem[0] = msg.sender
            mem[32] = 5
            stor5[address(msg.sender)] = idx + 1
            if 0 / dividends[idx].field_1024 <= 0:
                idx = idx + 1
                s = 0 / dividends[idx].field_1024
                t = t
                continue 
            require t + (0 / dividends[idx].field_1024) >= t
            mem[96] = idx
            mem[128] = 0 / dividends[idx].field_1024
            emit DividendClaimed(idx, 0 / dividends[idx].field_1024, msg.sender);
            idx = idx + 1
            s = 0 / dividends[idx].field_1024
            t = t + (0 / dividends[idx].field_1024)
            continue 
        require ext_call.return_data[0]
        require ext_call.return_data[0] * dividends[idx].field_512 / ext_call.return_data[0] == dividends[idx].field_512
        require dividends[idx].field_1024 > 0
        require dividends[idx].field_1024
        uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
        require dividends[idx].field_768 + (ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024) >= dividends[idx].field_768
        dividends[idx].field_768 += ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024
        mem[0] = msg.sender
        mem[32] = 5
        stor5[address(msg.sender)] = idx + 1
        if ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024 <= 0:
            idx = idx + 1
            s = ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024
            t = t
            continue 
        require t + (ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024) >= t
        mem[96] = idx
        mem[128] = ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024
        emit DividendClaimed(idx, ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024, msg.sender);
        idx = idx + 1
        s = ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024
        t = t + (ext_call.return_data[0] * dividends[idx].field_512 / dividends[idx].field_1024)
        continue 
    if t > 0:
        require t <= sub_8fdce32c
        sub_8fdce32c -= t
        call msg.sender with:
           value t wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
