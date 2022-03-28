contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 6378]
}



// =====================  Runtime code  =====================


#
#  - sub_1caadeda(?)
#
address seriesFactoryAddress;
address generalManagerAddress;
array of address series;
array of uint256 prose;
mapping of address sub_2e5833ea;
mapping of uint256 sub_a87644c8;
mapping of address addr;
mapping of uint256 name;

function name(address arg1) {
    return name[address(arg1)]
}

function sub_079b3f4e(?) {
    return addr[arg1]
}

function seriesFactory() {
    return seriesFactoryAddress
}

function sub_2e5833ea(?) {
    return sub_2e5833ea[arg1]
}

function addr(bytes32 arg1) {
    return addr[arg1]
}

function generalManager() {
    return generalManagerAddress
}

function sub_99fc400e(?) {
    return name[arg1]
}

function sub_a87644c8(?) {
    return sub_a87644c8[arg1]
}

function series(uint256 arg1) {
    require arg1 < series.length
    return address(series[arg1])
}

function prose(uint256 arg1) {
    return prose[arg1][0 len prose[arg1].length]
}

function isExpired(address arg1) {
    if sub_a87644c8[address(arg1)] <= block.timestamp:
        return 1
    else:
        return 0
}

function setFactory(address arg1) {
    require msg.sender == generalManagerAddress
    seriesFactoryAddress = arg1
    emit FactorySet(arg1);
}

function setManager(address arg1) {
    require msg.sender == generalManagerAddress
    generalManagerAddress = arg1
    emit ManagerSet(arg1);
}

function withdraw() {
    require msg.sender == generalManagerAddress
    call generalManagerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function payFee() payable {
    require sub_a87644c8[address(msg.sender)]
    require msg.value == 10^18
    sub_a87644c8[address(msg.sender)] += 8760 * 24 * 3600
    emit 0xd6eb8f1f: msg.sender
    return 1
}

function addAmendment(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == generalManagerAddress
    prose.length++
    if not prose.length <= prose.length + 1:
        mem[0] = 3
        idx = prose.length + 1
        while sha3(3) + prose.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    prose[prose.length][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xef3cd9b4: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length])
}

function _fallback() payable {
    if calldata.size <= 0:
        if sub_2e5833ea[address(msg.sender)]:
            call sub_2e5833ea[address(msg.sender)] with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            if ext_call.success:
                emit DepositMade(sub_2e5833ea[address(msg.sender)], msg.value);
        else:
            require ext_code.size(seriesFactoryAddress)
            call seriesFactoryAddress.0xad148b with:
               value msg.value wei
                 gas gas_remaining - 9050 wei
                args 0, 160, 10^6, 192, 224, msg.sender, 0, 0, 0
            require ext_call.success
            require ext_call.return_data[12 len 20]
            series.length++
            if not series.length <= series.length + 1:
                idx = series.length + 1
                while series.length > idx:
                    uint256(series[idx]) = 0
                    idx = idx + 1
                    continue 
            address(series[series.length]) = address(ext_call.return_data[0])
            sub_a87644c8[address(ext_call.return_data[0])] = block.timestamp + (8760 * 24 * 3600)
            sub_2e5833ea[address(msg.sender)] = address(ext_call.return_data[0])
            if ext_call.return_data[32] > 0:
                require not addr[ext_call.return_data[32]]
                addr[ext_call.return_data[32]] = address(ext_call.return_data[0])
            name[address(ext_call.return_data[0])] = ext_call.return_data[32]
            emit 0x51b48d0e: address(ext_call.return_data[0]), series.length - 1
    else:
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = 0
        if calldata.size:
            require ext_code.size(seriesFactoryAddress)
            if not calldata.size % 32:
                call seriesFactoryAddress.0xad148b with:
                   value msg.value wei
                     gas gas_remaining - 9050 wei
                    args 160, 10^6, calldata.size + 192, calldata.size + 224, msg.sender, calldata.size, mem[128], mem[160 len floor32(calldata.size - 1)], Mask(8 * -floor32(calldata.size - 1) + calldata.size, 0, 0), 0
            else:
                call seriesFactoryAddress.0xad148b with:
                   value msg.value wei
                     gas gas_remaining - 9050 wei
                    args 160, 10^6, floor32(calldata.size) + 224, floor32(calldata.size) + 256, msg.sender, calldata.size, mem[128], mem[160 len floor32(calldata.size - 1)], Mask(8 * -floor32(calldata.size - 1) + floor32(calldata.size) + 32, 0, 0), 0
        else:
            if not calldata.size % 32:
                require ext_code.size(seriesFactoryAddress)
                call seriesFactoryAddress.0xad148b with:
                   value msg.value wei
                     gas gas_remaining - 9050 wei
                    args 160, 10^6, calldata.size + 192, calldata.size + 224, msg.sender, calldata.size, mem[ceil32(calldata.size) + 388 len calldata.size], 0, 0
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 388] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 420 len calldata.size % 32]
                require ext_code.size(seriesFactoryAddress)
                call seriesFactoryAddress.0xad148b with:
                   value msg.value wei
                     gas gas_remaining - 9050 wei
                    args 160, 10^6, floor32(calldata.size) + 224, floor32(calldata.size) + 256, msg.sender, calldata.size, mem[ceil32(calldata.size) + 388 len floor32(calldata.size) + 32], 0, 0
        require ext_call.success
        require ext_call.return_data[12 len 20]
        series.length++
        if not series.length <= series.length + 1:
            idx = series.length + 1
            while series.length > idx:
                uint256(series[idx]) = 0
                idx = idx + 1
                continue 
        address(series[series.length]) = address(ext_call.return_data[0])
        sub_a87644c8[address(ext_call.return_data[0])] = block.timestamp + (8760 * 24 * 3600)
        sub_2e5833ea[address(msg.sender)] = address(ext_call.return_data[0])
        if ext_call.return_data[32] > 0:
            require not addr[ext_call.return_data[32]]
            addr[ext_call.return_data[32]] = address(ext_call.return_data[0])
        name[address(ext_call.return_data[0])] = ext_call.return_data[32]
        emit 0x51b48d0e: address(ext_call.return_data[0]), series.length - 1
}



}
