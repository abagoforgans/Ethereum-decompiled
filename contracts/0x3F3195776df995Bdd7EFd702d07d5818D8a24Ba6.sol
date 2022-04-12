contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 8760 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2740 len 20]
    return code.data[112 len 2616]
}



// =====================  Runtime code  =====================


address owner;
address miniMeTokenAddress;
uint256 RECYCLE_TIME;
mapping of struct dividends;
mapping of uint256 stor4;

function miniMeToken() {
    return miniMeTokenAddress
}

function RECYCLE_TIME() {
    return RECYCLE_TIME
}

function dividends(uint256 arg1) {
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

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function depositDividend() payable {
    require owner == msg.sender
    require ext_code.size(miniMeTokenAddress)
    call miniMeTokenAddress.totalSupplyAt(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args block.number
    require ext_call.success
    dividends.length++
    if not dividends.length <= dividends.length + 1:
        idx = (7 * dividends.length) + 7
        while 7 * dividends.length > idx:
            dividends[idx].field_0 = 0
            dividends[idx].field_256 = 0
            dividends[idx].field_512 = 0
            dividends[idx].field_768 = 0
            dividends[idx].field_1024 = 0
            uint8(dividends[idx].field_1280) = 0
            idx = idx + 7
            continue 
    dividends[dividends.length].field_0 = block.number
    dividends[dividends.length].field_256 = block.timestamp
    dividends[dividends.length].field_512 = msg.value
    dividends[dividends.length].field_768 = 0
    dividends[dividends.length].field_1024 = ext_call.return_data[0]
    uint8(dividends[dividends.length].field_1280) = 0
    emit DividendDeposited(block.number, msg.value, ext_call.return_data[0], dividends.length, msg.sender);
}

function claimDividend(uint256 arg1) {
    require arg1 < dividends.length
    require not uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0)
    require not uint8(dividends[arg1].field_1280)
    require ext_code.size(miniMeTokenAddress)
    call miniMeTokenAddress.balanceOfAt(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, dividends[arg1].field_0
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require dividends[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] == dividends[arg1].field_512
    require dividends[arg1].field_1024
    uint8(stor[(7 * arg1) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
    require (dividends[arg1].field_512 * ext_call.return_data[0] / dividends[arg1].field_1024) + dividends[arg1].field_768 >= dividends[arg1].field_768
    dividends[arg1].field_768 += dividends[arg1].field_512 * ext_call.return_data[0] / dividends[arg1].field_1024
    if dividends[arg1].field_512 * ext_call.return_data[0] / dividends[arg1].field_1024 > 0:
        call msg.sender with:
           value dividends[arg1].field_512 * ext_call.return_data[0] / dividends[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DividendClaimed(arg1, dividends[arg1].field_512 * ext_call.return_data[0] / dividends[arg1].field_1024, msg.sender);
}

function recycleDividend(uint256 arg1) {
    require owner == msg.sender
    require arg1 < dividends.length
    require not uint8(dividends[arg1].field_1280)
    require RECYCLE_TIME <= block.timestamp
    require dividends[arg1].field_256 < block.timestamp - RECYCLE_TIME
    require arg1 < dividends.length
    uint8(dividends[arg1].field_1280) = 1
    require ext_code.size(miniMeTokenAddress)
    call miniMeTokenAddress.totalSupplyAt(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args block.number
    require ext_call.success
    require dividends[arg1].field_768 <= dividends[arg1].field_512
    dividends.length++
    if not dividends.length <= dividends.length + 1:
        idx = (7 * dividends.length) + 7
        while 7 * dividends.length > idx:
            dividends[idx].field_0 = 0
            dividends[idx].field_256 = 0
            dividends[idx].field_512 = 0
            dividends[idx].field_768 = 0
            dividends[idx].field_1024 = 0
            uint8(dividends[idx].field_1280) = 0
            idx = idx + 7
            continue 
    dividends[dividends.length].field_0 = block.number
    dividends[dividends.length].field_256 = block.timestamp
    dividends[dividends.length].field_512 = dividends[arg1].field_512 - dividends[arg1].field_768
    dividends[dividends.length].field_768 = 0
    dividends[dividends.length].field_1024 = ext_call.return_data[0]
    uint8(dividends[dividends.length].field_1280) = 0
    emit DividendRecycled(block.number, dividends[arg1].field_512 - dividends[arg1].field_768, ext_call.return_data[0], dividends.length, msg.sender);
}

function claimDividendAll() {
    require stor4[address(msg.sender)] < dividends.length
    mem[0] = msg.sender
    mem[32] = 4
    idx = stor[sha3(mem[0 len 64])]
    while idx < dividends.length:
        mem[0] = msg.sender
        mem[32] = (7 * idx) + sha3(3) + 6
        if not uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0):
            require idx < dividends.length
            mem[0] = 3
            if not uint8(dividends[idx].field_1280):
                require idx + 1 >= idx
                stor4[address(msg.sender)] = idx + 1
                require idx < dividends.length
                require not uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0)
                require not uint8(dividends[idx].field_1280)
                mem[100] = msg.sender
                mem[132] = dividends[idx].field_0
                require ext_code.size(miniMeTokenAddress)
                call miniMeTokenAddress.balanceOfAt(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, dividends[idx].field_0
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require dividends[idx].field_512 * ext_call.return_data[0] / ext_call.return_data[0] == dividends[idx].field_512
                require dividends[idx].field_1024
                mem[0] = msg.sender
                mem[32] = (7 * idx) + sha3(3) + 6
                uint8(stor[(7 * idx) + ('name', 'dividends', 3) + 6][address(msg.sender)].field_0) = 1
                require (dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024) + dividends[idx].field_768 >= dividends[idx].field_768
                dividends[idx].field_768 += dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024
                if dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024 > 0:
                    call msg.sender with:
                       value dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    mem[96] = idx
                    mem[128] = dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024
                    emit DividendClaimed(idx, dividends[idx].field_512 * ext_call.return_data[0] / dividends[idx].field_1024, msg.sender);
        idx = idx + 1
        continue 
}



}
