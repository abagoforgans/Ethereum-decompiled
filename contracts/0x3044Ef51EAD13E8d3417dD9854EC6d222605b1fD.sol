contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor5;
address stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;

function _fallback() payable {
    stor1 = 1000
    stor8 = 0x960b236a07cf122663c4303350609a66a7b288c0
    stor9 = 0xd50440f844e7d741d2e851d011f839974af428d
    stor10 = stor8
    stor11 = stor9
    stor12 = 27500
    require not msg.value
    stor6 = msg.sender
    stor7 = block.timestamp
    stor5[stor8] = 2000
    return code.data[589 len 9834]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;
mapping of uint256 employeeInfoById;
mapping of uint256 stor4;
mapping of uint256 exchangeRates;
address stor6;
address stor8;
address stor10;
address stor11;
uint256 stor12;

function exchangeRates(address arg1) {
    return exchangeRates[arg1]
}

function getEmployeeCount() {
    require msg.sender == stor6
    return stor0.length
}

function getEmployeeInfoById(uint256 arg1) {
    require msg.sender == stor6
    require employeeInfoById[arg1] < stor0.length
    mem[160] = uint256(stor[sha3((10 * stor2[arg1]) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(10 * stor2[arg1]) + ('name', 'stor0', 0) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((10 * stor2[arg1]) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(stor0[stor2[arg1]].field_0), 
           Array(len=stor[(10 * stor2[arg1]) + ('name', 'stor0', 0) + 1].length, data=mem[160 len stor[(10 * stor2[arg1]) + ('name', 'stor0', 0) + 1].length]),
           uint256(stor0[stor2[arg1]].field_1792),
           address(stor0[stor2[arg1]].field_512),
           uint256(stor0[stor2[arg1]].field_1536)
}

function scapeHatch() {
    require msg.sender == stor6
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor6, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor6, ext_call.return_data[0]
    require ext_call.success
    stor0.length = 0
    mem[0] = 0
    idx = 0
    while sha3(0) + (10 * stor0.length) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])]) = 0
        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
        if 31 >= stor[idx + sha3(mem[0]) + 1].length:
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            idx = idx + 10
            continue 
        mem[0] = idx + sha3(mem[0]) + 1
        s = sha3(s + sha3(mem[0]) + 1)
        while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        address(stor[s + sha3(mem[0]) + 2]) = 0
        uint256(stor[s + sha3(mem[0]) + 3]) = 0
        uint256(stor[s + sha3(mem[0]) + 4]) = 0
        uint256(stor[s + sha3(mem[0]) + 5]) = 0
        uint256(stor[s + sha3(mem[0]) + 6]) = 0
        uint256(stor[s + sha3(mem[0]) + 7]) = 0
        uint256(stor[s + sha3(mem[0]) + 8]) = 0
        uint256(stor[s + sha3(mem[0]) + 9]) = 0
        s = s + 10
        continue 
    selfdestruct(stor6)
}

function _fallback() payable {
    revert
}

function sub_859185b1(?) {
    return (arg1 * stor12)
}

function sub_4f8f6b9c(?) {
    return (arg2 * exchangeRates[address(arg1)])
}

function sub_e5cfc7f0(?) {
    require msg.sender == stor6
    stor12 = arg1
}

function addFunds() payable {
    require msg.sender == stor6
    return eth.balance(this.address)
}

function setExchangeRate(address arg1, uint256 arg2) {
    require msg.sender == stor6
    exchangeRates[address(arg1)] = arg2
}

function setEmployeeSalary(uint256 arg1, uint256 arg2) {
    require msg.sender == stor6
    require employeeInfoById[arg1] < stor0.length
    uint256(stor0[stor2[arg1]].field_1536) = arg2
}

function getTokenBalance() {
    require ext_code.size(stor11)
    call stor11.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[0]
}

function setPercentTokenAllocation(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor4[address(msg.sender)] < stor0.length
    require uint256(stor0[stor4[address(msg.sender)]].field_1536) > 0
    require stor4[address(msg.sender)] < stor0.length
    uint256(stor0[stor4[address(msg.sender)]].field_2304) = block.timestamp
    uint256(stor0[stor4[address(msg.sender)]].field_768) = arg1
    require stor4[address(msg.sender)] < stor0.length
    uint256(stor0[stor4[address(msg.sender)]].field_1024) = arg2
    require stor4[address(msg.sender)] < stor0.length
    uint256(stor0[stor4[address(msg.sender)]].field_1280) = arg3
}

function payday(uint256 arg1) {
    require stor4[address(msg.sender)] < stor0.length
    require uint256(stor0[stor4[address(msg.sender)]].field_1536) > 0
    require employeeInfoById[arg1] < stor0.length
    uint256(stor0[stor2[arg1]].field_2048) = block.timestamp
    require employeeInfoById[arg1] < stor0.length
    require employeeInfoById[arg1] < stor0.length
    require employeeInfoById[arg1] < stor0.length
    call msg.sender with:
       value uint256(stor0[stor2[arg1]].field_1536) / 12 * uint256(stor0[stor2[arg1]].field_1024) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require employeeInfoById[arg1] < stor0.length
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor0[stor2[arg1]].field_512), uint256(stor0[stor2[arg1]].field_1536) / 12 * uint256(stor0[stor2[arg1]].field_1280) / 100
    require ext_call.success
    require employeeInfoById[arg1] < stor0.length
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor0[stor2[arg1]].field_512), uint256(stor0[stor2[arg1]].field_1536) / 12 * uint256(stor0[stor2[arg1]].field_768) / 100
    require ext_call.success
}

function calculatePayrollBurnrate() {
    require msg.sender == stor6
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        idx = idx + 1
        s = s + (uint256(stor0[idx].field_1536) / 12)
        continue 
    return (s * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length)
}

function getEmployeeInfoByName(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    require msg.sender == stor6
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 3
    _41 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) < stor0.length
    mem[64] = ceil32(arg1.length) + ceil32(stor[(10 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])) + ('name', 'stor0', 0) + 1].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[(10 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])) + ('name', 'stor0', 0) + 1].length
    mem[0] = (10 * uint256(stor[_41])) + sha3(0) + 1
    mem[ceil32(arg1.length) + 192] = uint256(stor[sha3((10 * uint256(stor[_41])) + ('name', 'stor0', 0) + 1)].field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[(10 * uint256(stor[_41])) + ('name', 'stor0', 0) + 1].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((10 * uint256(stor[_41])) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _79 = mem[64]
    mem[mem[64]] = uint256(stor0[uint256(stor[_41])].field_0)
    mem[mem[64] + 64] = uint256(stor0[uint256(stor[_41])].field_1792)
    mem[mem[64] + 96] = address(stor0[uint256(stor[_41])].field_512)
    mem[mem[64] + 128] = uint256(stor0[uint256(stor[_41])].field_1536)
    mem[mem[64] + 32] = 160
    mem[_79 + 160] = mem[ceil32(arg1.length) + 160]
    _81 = mem[ceil32(arg1.length) + 160]
    mem[_79 + 192 len ceil32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len ceil32(mem[ceil32(arg1.length) + 160])]
    if not _81 % 32:
        return memory
          from mem[64]
           len _81 + _79 + -mem[64] + 192
    mem[floor32(_81) + _79 + 192] = mem[floor32(_81) + _79 + -(_81 % 32) + 224 len _81 % 32]
    return memory
      from mem[64]
       len floor32(_81) + _79 + -mem[64] + 224
}

function calculatePayrollRunway() {
    require msg.sender == stor6
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        idx = idx + 1
        s = s + (uint256(stor0[idx].field_1536) / 12)
        continue 
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if s * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length / 30:
        return ((ext_call.return_data[0] * exchangeRates[stor8]) + (eth.balance(this.address) * stor12) + ext_call.return_data[0] / s * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length / 30)
    revert
}

function removeEmployee(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor6
    require employeeInfoById[arg1] < stor0.length
    mem[0] = 0
    uint256(stor0[stor2[arg1]].field_0) = 0
    uint256(stor0[stor2[arg1]].field_256) = 0
    if 31 >= stor[(10 * stor2[arg1]) + ('name', 'stor0', 0) + 1].length:
        address(stor0[stor2[arg1]].field_512) = 0
        uint256(stor0[stor2[arg1]].field_768) = 0
        uint256(stor0[stor2[arg1]].field_1024) = 0
        uint256(stor0[stor2[arg1]].field_1280) = 0
        uint256(stor0[stor2[arg1]].field_1536) = 0
        uint256(stor0[stor2[arg1]].field_1792) = 0
        uint256(stor0[stor2[arg1]].field_2048) = 0
        uint256(stor0[stor2[arg1]].field_2304) = 0
        idx = 0
        while idx < stor0.length:
            employeeInfoById[uint256(stor0[idx].field_0)] = idx
            _33 = mem[64]
            mem[0] = (10 * idx) + sha3(0) + 1
            mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
            s = mem[64]
            t = sha3(mem[0])
            while _33 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_33 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
            uint256(stor[sha3(mem[mem[64] len _33 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
            require idx < stor0.length
            mem[0] = address(stor0[idx].field_512)
            mem[32] = 4
            stor4[address(stor0[idx].field_512)] = idx
            idx = idx + 1
            continue 
    else:
        mem[0] = (10 * employeeInfoById[arg1]) + sha3(0) + 1
        idx = 0
        while stor[(10 * stor2[arg1]) + ('name', 'stor0', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((10 * stor2[arg1]) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        address(stor0[stor2[arg1]].field_512) = 0
        uint256(stor0[stor2[arg1]].field_768) = 0
        uint256(stor0[stor2[arg1]].field_1024) = 0
        uint256(stor0[stor2[arg1]].field_1280) = 0
        uint256(stor0[stor2[arg1]].field_1536) = 0
        uint256(stor0[stor2[arg1]].field_1792) = 0
        uint256(stor0[stor2[arg1]].field_2048) = 0
        uint256(stor0[stor2[arg1]].field_2304) = 0
        idx = 0
        while idx < stor0.length:
            employeeInfoById[uint256(stor0[idx].field_0)] = idx
            _59 = mem[64]
            mem[0] = (10 * idx) + sha3(0) + 1
            mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
            s = mem[64]
            t = sha3(mem[0])
            while _59 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_59 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
            uint256(stor[sha3(mem[mem[64] len _59 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
            require idx < stor0.length
            mem[0] = address(stor0[idx].field_512)
            mem[32] = 4
            stor4[address(stor0[idx].field_512)] = idx
            idx = idx + 1
            continue 
}

function addEmployee(address arg1, string arg2, uint256[3] arg3, uint256 arg4) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 96] = call.data[68 len 96]
    mem[ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg2.length) + 544] = 0
    mem[64] = ceil32(arg2.length) + 672
    mem[ceil32(arg2.length) + 576] = 0
    mem[ceil32(arg2.length) + 608 len 64] = 0
    require msg.sender == stor6
    idx = 0
    s = 0
    while idx < 3:
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(arg2.length) + 128]
        continue 
    stor1.length++
    mem[ceil32(arg2.length) + 224] = stor1.length
    mem[ceil32(arg2.length) + 256] = 96
    mem[ceil32(arg2.length) + 288] = arg1
    mem[ceil32(arg2.length) + 320] = ceil32(arg2.length) + 128
    mem[ceil32(arg2.length) + 352] = cd[164]
    mem[ceil32(arg2.length) + 384] = block.timestamp
    mem[ceil32(arg2.length) + 416] = block.timestamp
    mem[ceil32(arg2.length) + 448] = block.timestamp
    stor0.length++
    if 0x6f32f1ef8b18a2bc3cea59789c79d441 * s == 100:
        if not stor0.length > stor0.length + 1:
            uint256(stor0[stor0.length].field_0) = stor1.length
            mem[0] = (10 * stor0.length) + sha3(0) + 1
            uint256(stor[sha3((10 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
            address(stor0[stor0.length].field_512) = arg1
            s = (10 * stor0.length) + 3
            idx = ceil32(arg2.length) + 128
            while ceil32(arg2.length) + 224 > idx:
                uint256(stor0[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (10 * stor0.length) + 6
            while (10 * stor0.length) + 6 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor0[stor0.length].field_1536) = cd[164]
            uint256(stor0[stor0.length].field_1792) = block.timestamp
            uint256(stor0[stor0.length].field_2048) = block.timestamp
            uint256(stor0[stor0.length].field_2304) = block.timestamp
            idx = 0
            while idx < stor0.length:
                employeeInfoById[uint256(stor0[idx].field_0)] = idx
                _1204 = mem[64]
                mem[0] = (10 * idx) + sha3(0) + 1
                mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
                s = mem[64]
                t = sha3(mem[0])
                while _1204 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1204 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
                uint256(stor[sha3(mem[mem[64] len _1204 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
                require idx < stor0.length
                mem[0] = address(stor0[idx].field_512)
                mem[32] = 4
                stor4[address(stor0[idx].field_512)] = idx
                idx = idx + 1
                continue 
        else:
            mem[0] = 0
            idx = (10 * stor0.length) + 10
            while sha3(0) + (10 * stor0.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 8]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                    idx = idx + 10
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                address(stor[s + sha3(mem[0]) + 2]) = 0
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                uint256(stor[s + sha3(mem[0]) + 6]) = 0
                uint256(stor[s + sha3(mem[0]) + 7]) = 0
                uint256(stor[s + sha3(mem[0]) + 8]) = 0
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                s = s + 10
                continue 
            uint256(stor0[stor0.length].field_0) = stor1.length
            mem[0] = (10 * stor0.length) + sha3(0) + 1
            uint256(stor[sha3((10 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
            address(stor0[stor0.length].field_512) = arg1
            s = (10 * stor0.length) + 3
            idx = ceil32(arg2.length) + 128
            while ceil32(arg2.length) + 224 > idx:
                uint256(stor0[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (10 * stor0.length) + 6
            while (10 * stor0.length) + 6 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor0[stor0.length].field_1536) = cd[164]
            uint256(stor0[stor0.length].field_1792) = block.timestamp
            uint256(stor0[stor0.length].field_2048) = block.timestamp
            uint256(stor0[stor0.length].field_2304) = block.timestamp
            idx = 0
            while idx < stor0.length:
                employeeInfoById[uint256(stor0[idx].field_0)] = idx
                _1312 = mem[64]
                mem[0] = (10 * idx) + sha3(0) + 1
                mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
                s = mem[64]
                t = sha3(mem[0])
                while _1312 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1312 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
                uint256(stor[sha3(mem[mem[64] len _1312 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
                require idx < stor0.length
                mem[0] = address(stor0[idx].field_512)
                mem[32] = 4
                stor4[address(stor0[idx].field_512)] = idx
                idx = idx + 1
                continue 
    else:
        if not stor0.length > stor0.length + 1:
            uint256(stor0[stor0.length].field_0) = stor1.length
            mem[0] = (10 * stor0.length) + sha3(0) + 1
            uint256(stor[sha3((10 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
            address(stor0[stor0.length].field_512) = arg1
            s = (10 * stor0.length) + 3
            idx = ceil32(arg2.length) + 128
            while ceil32(arg2.length) + 224 > idx:
                uint256(stor0[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (10 * stor0.length) + 6
            while (10 * stor0.length) + 6 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor0[stor0.length].field_1536) = cd[164]
            uint256(stor0[stor0.length].field_1792) = block.timestamp
            uint256(stor0[stor0.length].field_2048) = block.timestamp
            uint256(stor0[stor0.length].field_2304) = block.timestamp
            idx = 0
            while idx < stor0.length:
                employeeInfoById[uint256(stor0[idx].field_0)] = idx
                _1207 = mem[64]
                mem[0] = (10 * idx) + sha3(0) + 1
                mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
                s = mem[64]
                t = sha3(mem[0])
                while _1207 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1207 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
                uint256(stor[sha3(mem[mem[64] len _1207 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
                require idx < stor0.length
                mem[0] = address(stor0[idx].field_512)
                mem[32] = 4
                stor4[address(stor0[idx].field_512)] = idx
                idx = idx + 1
                continue 
        else:
            mem[0] = 0
            idx = (10 * stor0.length) + 10
            while sha3(0) + (10 * stor0.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 8]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                    idx = idx + 10
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                address(stor[s + sha3(mem[0]) + 2]) = 0
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                uint256(stor[s + sha3(mem[0]) + 6]) = 0
                uint256(stor[s + sha3(mem[0]) + 7]) = 0
                uint256(stor[s + sha3(mem[0]) + 8]) = 0
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                s = s + 10
                continue 
            uint256(stor0[stor0.length].field_0) = stor1.length
            mem[0] = (10 * stor0.length) + sha3(0) + 1
            uint256(stor[sha3((10 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
            address(stor0[stor0.length].field_512) = arg1
            s = (10 * stor0.length) + 3
            idx = ceil32(arg2.length) + 128
            while ceil32(arg2.length) + 224 > idx:
                uint256(stor0[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (10 * stor0.length) + 6
            while (10 * stor0.length) + 6 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor0[stor0.length].field_1536) = cd[164]
            uint256(stor0[stor0.length].field_1792) = block.timestamp
            uint256(stor0[stor0.length].field_2048) = block.timestamp
            uint256(stor0[stor0.length].field_2304) = block.timestamp
            idx = 0
            while idx < stor0.length:
                employeeInfoById[uint256(stor0[idx].field_0)] = idx
                _1313 = mem[64]
                mem[0] = (10 * idx) + sha3(0) + 1
                mem[mem[64]] = uint256(stor[sha3((10 * idx) + ('name', 'stor0', 0) + 1)].field_0)
                s = mem[64]
                t = sha3(mem[0])
                while _1313 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_1313 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length] = 3
                uint256(stor[sha3(mem[mem[64] len _1313 + stor[(10 * idx) + ('name', 'stor0', 0) + 1].length + -mem[64] + 32])]) = idx
                require idx < stor0.length
                mem[0] = address(stor0[idx].field_512)
                mem[32] = 4
                stor4[address(stor0[idx].field_512)] = idx
                idx = idx + 1
                continue 
}



}
