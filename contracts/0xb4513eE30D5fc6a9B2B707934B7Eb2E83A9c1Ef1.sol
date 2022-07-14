contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 100000000000 * 10^18


address owner;
address sub_ffd972beAddress;
uint256 AVAILABLE_TOTAL_SUPPLY;
uint256 AVAILABLE_AIRDROP_SUPPLY;
uint256 sub_b99f221b;
uint256 sub_df0f813c;
uint256 sub_7e75878e;
uint256 sub_1fe49496;
uint256 sub_41c5ed43;
uint256 AVAILABLE_RESERVE_SUPPLY;
uint256 grandTotalClaimed;
uint256 startTime;
mapping of struct allocations;
mapping of uint8 stor13;
mapping of uint8 stor14;

function airdropAdmins(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function AVAILABLE_AIRDROP_SUPPLY() payable {
    return AVAILABLE_AIRDROP_SUPPLY
}

function sub_1fe49496(?) payable {
    return sub_1fe49496
}

function sub_41c5ed43(?) payable {
    return sub_41c5ed43
}

function allocations(address arg1) payable {
    require calldata.size - 4 >= 32
    return allocations[arg1].field_0, 
           allocations[arg1].field_256,
           allocations[arg1].field_512,
           allocations[arg1].field_768,
           allocations[arg1].field_1024
}

function startTime() payable {
    return startTime
}

function sub_7e75878e(?) payable {
    return sub_7e75878e
}

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function owner() payable {
    return owner
}

function grandTotalClaimed() payable {
    return grandTotalClaimed
}

function AVAILABLE_TOTAL_SUPPLY() payable {
    return AVAILABLE_TOTAL_SUPPLY
}

function sub_b99f221b(?) payable {
    return sub_b99f221b
}

function sub_df0f813c(?) payable {
    return sub_df0f813c
}

function AVAILABLE_RESERVE_SUPPLY() payable {
    return AVAILABLE_RESERVE_SUPPLY
}

function sub_ffd972be(?) payable {
    return sub_ffd972beAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function grandTotalAllocated() payable {
    return (-AVAILABLE_TOTAL_SUPPLY + 100000000000 * 10^18)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAirdropAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function refundTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg2 != sub_ffd972beAddress
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function setAllocation(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require not allocations[address(arg1)].field_768
    require arg2 > 0
    require arg3 <= 6
    require arg3 >= 0
    require arg3 <= 6
    require arg1
    require arg3 <= 6
    if not arg3:
        require arg2 <= AVAILABLE_AIRDROP_SUPPLY
        AVAILABLE_AIRDROP_SUPPLY -= arg2
        allocations[address(arg1)].field_0 = 0
        allocations[address(arg1)].field_256 = 0
        allocations[address(arg1)].field_256 = 0
        allocations[address(arg1)].field_512 = 0
        allocations[address(arg1)].field_768 = arg2
        allocations[address(arg1)].field_1024 = 0
    else:
        require arg3 <= 6
        if arg3 == 1:
            require arg2 <= sub_b99f221b
            sub_b99f221b -= arg2
            allocations[address(arg1)].field_0 = 1
            allocations[address(arg1)].field_256 = 0
            allocations[address(arg1)].field_512 = 0
            allocations[address(arg1)].field_768 = arg2
            allocations[address(arg1)].field_1024 = 0
        else:
            require arg3 <= 6
            if arg3 == 2:
                require arg2 <= sub_df0f813c
                sub_df0f813c -= arg2
                allocations[address(arg1)].field_0 = 2
                allocations[address(arg1)].field_256 = 0
                allocations[address(arg1)].field_512 = 0
                allocations[address(arg1)].field_768 = arg2
                allocations[address(arg1)].field_1024 = 0
            else:
                require arg3 <= 6
                if arg3 == 3:
                    require arg2 <= sub_7e75878e
                    sub_7e75878e -= arg2
                    allocations[address(arg1)].field_0 = 3
                    allocations[address(arg1)].field_256 = 0
                    allocations[address(arg1)].field_512 = 0
                    allocations[address(arg1)].field_768 = arg2
                    allocations[address(arg1)].field_1024 = 0
                else:
                    require arg3 <= 6
                    if arg3 == 4:
                        require arg2 <= sub_1fe49496
                        sub_1fe49496 -= arg2
                        allocations[address(arg1)].field_0 = 4
                        allocations[address(arg1)].field_256 = 0
                        allocations[address(arg1)].field_512 = 0
                        allocations[address(arg1)].field_768 = arg2
                        allocations[address(arg1)].field_1024 = 0
                    else:
                        require arg3 <= 6
                        if arg3 == 5:
                            require arg2 <= sub_41c5ed43
                            sub_41c5ed43 -= arg2
                            allocations[address(arg1)].field_0 = 5
                            allocations[address(arg1)].field_256 = 0
                            allocations[address(arg1)].field_512 = 0
                            allocations[address(arg1)].field_768 = arg2
                            allocations[address(arg1)].field_1024 = 0
                        else:
                            require arg3 <= 6
                            if arg3 == 6:
                                require arg2 <= AVAILABLE_RESERVE_SUPPLY
                                AVAILABLE_RESERVE_SUPPLY -= arg2
                                allocations[address(arg1)].field_0 = 6
                                allocations[address(arg1)].field_256 = 0
                                allocations[address(arg1)].field_512 = 0
                                allocations[address(arg1)].field_768 = arg2
                                allocations[address(arg1)].field_1024 = 0
    require arg2 <= AVAILABLE_TOTAL_SUPPLY
    AVAILABLE_TOTAL_SUPPLY -= arg2
    require arg3 <= 6
    emit LogNewAllocation(arg2, -AVAILABLE_TOTAL_SUPPLY + 100000000000 * 10^18, arg1, arg3);
}

function airdropTokens(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if msg.sender == owner:
        require block.timestamp >= startTime
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            if stor14[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            require idx < arg2.length
            _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _58
            require ext_code.size(sub_ffd972beAddress)
            call sub_ffd972beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _58
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg2.length
            require s + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= s
            idx = idx + 1
            s = s + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160])
            continue 
    else:
        require stor13[address(msg.sender)]
        require block.timestamp >= startTime
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            if stor14[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            require idx < arg2.length
            _61 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _61
            require ext_code.size(sub_ffd972beAddress)
            call sub_ffd972beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _61
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg2.length
            require s + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= s
            idx = idx + 1
            s = s + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160])
            continue 
    require s <= AVAILABLE_AIRDROP_SUPPLY
    AVAILABLE_AIRDROP_SUPPLY -= s
    require s <= AVAILABLE_TOTAL_SUPPLY
    AVAILABLE_TOTAL_SUPPLY -= s
    require grandTotalClaimed + s >= grandTotalClaimed
    grandTotalClaimed += s
}

function transferTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require allocations[address(arg1)].field_1024 < allocations[address(arg1)].field_768
    require block.timestamp >= allocations[address(arg1)].field_256
    if allocations[address(arg1)].field_512 <= block.timestamp:
        require allocations[address(arg1)].field_1024 <= allocations[address(arg1)].field_768
        allocations[address(arg1)].field_1024 = allocations[address(arg1)].field_768
        require ext_code.size(sub_ffd972beAddress)
        call sub_ffd972beAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require grandTotalClaimed + allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024 >= grandTotalClaimed
        grandTotalClaimed = grandTotalClaimed + allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024
        emit 0xd008e8fc: allocations[address(arg1)].field_768 - allocations[address(arg1)].field_1024, allocations[address(arg1)].field_768, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
    else:
        require startTime <= allocations[address(arg1)].field_512
        require startTime <= block.timestamp
        if not allocations[address(arg1)].field_768:
            require allocations[address(arg1)].field_512 - startTime > 0
            require allocations[address(arg1)].field_512 - startTime
            require allocations[address(arg1)].field_1024 <= 0 / allocations[address(arg1)].field_512 - startTime
            allocations[address(arg1)].field_1024 = 0 / allocations[address(arg1)].field_512 - startTime
            require ext_code.size(sub_ffd972beAddress)
            call sub_ffd972beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (0 / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require grandTotalClaimed + (0 / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024 >= grandTotalClaimed
            grandTotalClaimed = grandTotalClaimed + (0 / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024
            emit 0xd008e8fc: (0 / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024, 0 / allocations[address(arg1)].field_512 - startTime, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
        else:
            require allocations[address(arg1)].field_768
            require (block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_768 == block.timestamp - startTime
            require allocations[address(arg1)].field_512 - startTime > 0
            require allocations[address(arg1)].field_512 - startTime
            require allocations[address(arg1)].field_1024 <= (block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime
            allocations[address(arg1)].field_1024 = (block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime
            require ext_code.size(sub_ffd972beAddress)
            call sub_ffd972beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ((block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require grandTotalClaimed + ((block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024 >= grandTotalClaimed
            grandTotalClaimed = grandTotalClaimed + ((block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024
            emit 0xd008e8fc: ((block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime) - allocations[address(arg1)].field_1024, (block.timestamp * allocations[address(arg1)].field_768) - (startTime * allocations[address(arg1)].field_768) / allocations[address(arg1)].field_512 - startTime, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
}



}
